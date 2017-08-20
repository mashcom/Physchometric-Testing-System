<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Report;
use App\Test;
use App\Score;
use App\Http\Requests;

class ReportController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $test= Test::with('questions')->get();
        return view('reports.index',['report'=>$test]);
    }

    public function compile($id)
    {
        $user_list = Score::with('question')->where('test_id',$id)->orderBy('user_id','asc')->get();
        
        $unique_users = $user_list->unique('user_id');

       
  
        foreach ($unique_users as $u) {
            
           $correct = 0;
        $incorrect = 0;
        $skipped = 0;
            $test = Score::with('question')->where('test_id',$id)
            ->where('user_id',$u->user_id)
            ->get();

            //dd($test);
            
            foreach ($test as $t) {
               
                if($t->answer == $t->question->correct_answer){
                    $correct+=1;
                }
                if($t->answer != $t->question->correct_answer && $t->answer !="skipped" ){
                    $incorrect+=1;
                    echo $incorrect."correct user id is 4 given ".$t->user_id." because ".$t->question->correct_answer." is not ". $t->answer."<br/> ";
                }

                if($t->answer =="skipped"){
                    $skipped +=1;
                }

                $update = Report::updateOrCreate(["user_id"=>$u->user_id,"test_id"=>$t->test_id],["correct"=>$correct,"incorrect"=>$incorrect,"skipped"=>$skipped]);
               // dump($update);

            }
    }
        

        return redirect('admin/reports/'.$id);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $report = Report::with('test','user')->where("test_id",$id)->orderBy('correct','desc')->get();
        return view('reports.test',['report'=>$report]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
