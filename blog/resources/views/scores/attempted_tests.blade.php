@extends('layouts.app')

@section('content')

@if(sizeof($scores) ==0)
  <div class="error-page">
        <h2 class="headline text-yellow"> <i class="fa fa-comment"></i> </h2>

        <div class="error-content">
          <br/>
          <h2 class="text-bold">Oops. No attempts so far</h2>

          <p>
           You havent attempted any tests, come back when you hve attempted a test
          </p>

               
        </div>
        <!-- /.error-content -->
      </div>

@endif

@if(sizeof($scores) > 0)
<div class="col-lg-10 col-lg-offset-1">

 <section class="content-header">
      <h1 class="text-center text-light" style="font-size:40px">
        Attempted Tests
      </h1>
      <h5 class="text-center text-bold">You have attampted the following tests before</h5>
      <br/>
    </section>
    
    
      <div class="box">
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <table class="table table-striped">
                <tbody><tr>
                  <th style="width:25%">Name</th>
                  <th>Description</th>
                  <th></th>
                </tr>
                @foreach($scores as $s)
                <tr>
                  <td>{{ $s->test->name}}</td>
                  <td>{{ $s->test->description}}</td>
                  <td><a class="btn btn-sm btn-primary" href=<?php echo url ('/score/'.$s->test_id) ?>>View</a></td>
                </tr>
                @endforeach
              </tbody></table>
            </div>
            <!-- /.box-body -->
          </div>
    

</div>
@endif
@endsection
