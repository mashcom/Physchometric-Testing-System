 @extends('layouts.app')
@section('content')

<div class="col-lg-12 cotl-lg-offset-1" ng-controller='MainCtrl' ng-cloak><br/><br/><br/><br/>
    
    @section('content_header')
    <section class="content-header">
      <h1 class="text-center " style="font-size:40px">
        {{ $test_info->name}}
      </h1>
      <h4 class="text-center text-bold">{{ $user_info->name }}</h4>
      <h4 class="text-center text-bold">{{ $user_info->email }}</h4>
    </section>

    @endsection

    <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3>{{ $scores->count() }}<sup style="font-size: 20px"> Questions</sup></h3>

              <p>Total</p>
            </div>
            <div class="icon">
              <i class="ion ion-mic-a"></i>
            </div>
           </div>
        </div>

	<div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3>@{{correct_stat}}<sup style="font-size: 20px"> Questions</sup></h3>

              <p>Correct Answers</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            </div>
        </div>

        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-orange">
            <div class="inner">
              <h3>{{ $skipped_count }} <sup style="font-size: 20px"> Questions</sup></h3>

              <p>Skipped</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
             </div>
        </div>

        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3>@{{ incorrect_stat }}<sup style="font-size: 20px"> Questions</sup></h3>

              <p>Incorrect</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
             </div>
        </div>


	<div class="col-lg-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Test Results</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <table class="table">
                <tbody><tr>
                  <th style="width: 50%">Question</th>
                  <th>Answer</th>
                  <th style="width: 40px">Correct Answer</th>
                  <th style="width: 40px">Your Answer</th>
                  <th style="width: 40px"></th>
                </tr>
                <?php $correct=0; $incorrect=0;$skipped=0; ?>
                 @foreach($scores as $score)
    				<?php 

    					if($score->question->correct_answer == $score->answer){
                $correct +=1;
    						$theme = "bg-green";
    					}
    					if($score->question->correct_answer != $score->answer && $score->answer !="skipped" ){
                $incorrect +=1;
    						$theme = "bg-red";
    					}
    					if($score->answer =="skipped"){
                $skipped+=1;
    						$theme = "bg-yellow";
    					}
    				 ?>
 				<tr>
                  <td>{{ $score->question->content }}</td>
                   <td>
                   		 @foreach(json_decode($score->question->answers) as $key=>$answer) 
				        <label>
				            <b class="text-danger">{{$key}}</b>: {{$answer}}
				        </label>
      					
        				@endforeach
                   </td>
                  <td style="font-size: 20px">{{ $score->question->correct_answer }}</td>
                  <td style="font-size: 20px" class="<?php echo $theme ?>">{{ $score->answer }}</td>
     			  
                </tr>

   				 @endforeach
                
              </tbody></table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

<input type="number" id="correct-stat" value={{ $correct }} />
<input type="number" id="incorrect-stat" value={{$incorrect}} />

</div>

@endsection
