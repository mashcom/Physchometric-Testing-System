@extends('layouts.app')
@section('test_menu')

<section class="content-header bg-green" ng-shrow=started>
      <h4 class="text-center" style="font-size:16px">
        {{ $test_info->name}}
      </h4>
      <h4 class="text-center text-bold"><i class="fa fa-clock-o"></i> @{{ expiry_time }}</h4>                
</section>

@endsection

@section('content')

@if(sizeof($questions) ==0)
	<div class="error-page" ng-show=started>
        <h2 class="headline text-yellow"> <i class="fa fa-warning text-yellow"></i> </h2>

        <div class="error-content">
          <h3>Oops! No questions for you.</h3>

          <p>
           This test has no questions associated with it, if you believe this is an error please contact your administrator
          </p>
        </div>
        <!-- /.error-content -->
      </div>
@endif 


<div class="col-lg-8 col-lg-offset-2 form-group" ng-cloak><br/><br/><br/><br/>
    
<div class="error-page" ng-show=completed>
        <h2 class="headline text-purple"> <i class="fa fa-check-square"></i></h2>

        <div class="error-content">
          <h3> Completed</h3>

          <p>
          You have reached the end of the test to view your score click the button below.
          </p>

          <a class="btn btn-lg btn-primary text-bold" href=<?php echo "../score/".$test_info->id ?> ><i class="fa fa-eye"></i>View Score</a>
        </div>
        <!-- /.error-content -->
      </div>

    <!-- template to display before starting answering-->
    <div class="error-page" ng-show=!started>
        <h2 class="headline text-gray"> <i class="fa fa-balance-scale"></i></h2>

        <div class="error-content">
          <h3 class="text-bold" style="font-weight:bold !important">{{ $test_info->name }}</h3>

          <p>
          {{ $test_info->description }}
          </p>

          <p>Once you click <b>start</b> button the clock will start cannot be stopped and your previous attempt will be trashed</p>

          <h4 style="font-weight:bold !important">Time: 30 minutes</h4>
          <button class="btn btn-lg btn-primary text-bold" ng-click=startTest()>Start <i class="fa fa-play"></i></button>
          @if(Auth::user()->is_admin)
           <a href=<?php echo "../admin/reports/".$test_info->id ?> class="btn btn-lg btn-success text-bold"><i class="fa fa-book"></i> Report</a>
         
            <a href=<?php echo "../admin/test/".$test_info->id ?> class="btn btn-lg btn-danger text-bold"><i class="fa fa-edit"></i> Edit</a>
          @endif
        </div>
        <!-- /.error-content -->
      </div>

<div ng-hide=!started>
    <input id="max_qns" value={{$questions->count()}} type='hidden'/>
    <input id="active_test" value={{$test_info->id}} type='hidden'/>
    @foreach($questions as $k=>$q)

    <form ng-show=active_qn=={{$k}}>
      @if($q->illustration !="")
       <img class='illustration-img' src=<?php echo "http://localhost/laravel/blog/storage/app/".$q->illustration ?>>
      @endif
    <div class="radio">
        <h4 class="text-black">Q: {{$q->content}}</h4>
        @foreach(json_decode($q->answers) as $key=>$answer) 
        <label>
            <input type="radio" name="optionsRadios" value="{{$key}}" ng-click = updateSelected("{{$key}}")><b>{{$key}}</b>: {{$answer}}</input>
        </label>
      <br/>
        @endforeach
    </div>
      <button class="btn btn-md btn-primary text-bold" ng-click=previous()><i class="fa fa-angle-left"></i> Previous</button>
      <button class="btn btn-md btn-warning text-bold" ng-click=skip({{$q->id}})><i class="fa fa-step-forward"></i> Skip</button>
      <button class="btn btn-md btn-success text-bold" nd-class="{'disabled': !active_answer}" ng-click=saveAnswer({{$q->id}})><i class="fa fa-angle-right"></i> Next</button>
	</form>
 

    @endforeach
  </div>
</div>

@endsection
