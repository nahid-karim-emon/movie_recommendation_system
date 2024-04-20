<!-- Header -->
@section('title', 'Home')
@include('../layouts/homeHeader')
<!-- End of Header -->

<section id="center" class="center_home">
 <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2" class="" aria-current="true"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="{{ asset('assets/img/1.jpg') }}" class="d-block w-100" alt="...">
      <div class="carousel-caption d-md-block">
        <h5 class="text-uppercase bg_red d-inline-block p-2 text-white">Releasing On</h5>
		<h1>Vestibulum Arcu Eget Aptent Semper</h1>
		<p>There are many variations of passages available but the majority have suffered
alteration in some form by injected humour or randomised words.</p>
        <ul class="mb-0 mt-3">
		 <li  class="d-inline-block me-2"><a class="button_1" href="#">CONTACT US <i class="fa fa-long-arrow-right ms-1"></i></a></li>
		 <li class="d-inline-block"><a class="button_2" href="#">ABOUT US  <i  class="fa fa-long-arrow-right ms-1"></i></a></li>
		</ul>
      </div>
    </div>
    <div class="carousel-item">
      <img src="{{ asset('assets/img/2.jpg') }}" class="d-block w-100" alt="...">
      <div class="carousel-caption d-md-block">
        <h5 class="text-uppercase bg_red d-inline-block p-2 text-white">Releasing On</h5>
		<h1>Vestibulum Arcu Eget Aptent Semper</h1>
		<p>There are many variations of passages available but the majority have suffered
alteration in some form by injected humour or randomised words.</p>
        <ul class="mb-0 mt-3">
		 <li  class="d-inline-block me-2"><a class="button_1" href="#">CONTACT US <i class="fa fa-long-arrow-right ms-1"></i></a></li>
		 <li class="d-inline-block"><a class="button_2" href="#">ABOUT US  <i  class="fa fa-long-arrow-right ms-1"></i></a></li>
		</ul>
      </div>
    </div>
    <div class="carousel-item">
      <img src="{{ asset('assets/img/3.jpg') }}" class="d-block w-100" alt="...">
      <div class="carousel-caption d-md-block">
        <h5 class="text-uppercase bg_red d-inline-block p-2 text-white">Releasing On</h5>
		<h1>Vestibulum Arcu Eget Aptent Semper</h1>
		<p>There are many variations of passages available but the majority have suffered
alteration in some form by injected humour or randomised words.</p>
        <ul class="mb-0 mt-3">
		 <li  class="d-inline-block me-2"><a class="button_1" href="#">CONTACT US <i class="fa fa-long-arrow-right ms-1"></i></a></li>
		 <li class="d-inline-block"><a class="button_2" href="#">ABOUT US  <i  class="fa fa-long-arrow-right ms-1"></i></a></li>
		</ul>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</section>

<section id="upcome" class="p_3 bg-light">
 <div class="container-xl">
  <div class="row upcome_1 text-center">
   <div class="col-md-12">
     <h3 class="mb-0">UPCOMING MOVIES</h3>
	 <hr class="line me-auto ms-auto">
   </div>
  </div>
  @isset($upcoming)
  <div class="row upcome_2 mt-4">
    <div class="tab-content">
    <div class="tab-pane active" id="home">
       <div class="upcome_2i row">
			@foreach ($upcoming as $key => $movie)
			@if ($loop->index <4)
			<div class="col-md-3">
				<div class="upcome_2i1 clearfix position-relative">
				<div class="upcome_2i1i clearfix">
				<img src="{{$movie->photo ? asset('storage/'.$movie->photo) : asset('images/productioncompany.jpg')}}" width="260px" alt="abc" height="330px">
				</div>
					<div class="upcome_2i1i1 clearfix position-absolute top-0 text-center w-100">
					<h6 class="text-uppercase mb-0"><a class="button_2" href="{{ route('movie.show',$movie->id) }}">View Details</a></h6>
					</div>
				</div>
				<div class="upcome_2i_last bg-white p-3">
					<div class="upcome_2i_lasti row">
					<div class="col-md-9 col-9">
					<div class="upcome_2i_lastil">
					<h5><a href="{{ route('movie.show',$movie->id) }}">{{ $movie->title }}</a></h5>
					<h6 class="text-muted">@foreach ($movie->MovieGenre as $MovieGenre)
						{{ $MovieGenre->genre->title }}
						@endforeach</h6>
						@foreach ($movie->MovieRating as $rating)
						@switch($rating->rating_id)
						@case(1)
							<p class=" price align-self-start p-1 bg-info" style="font-size: 16px;border-bottom: none;"> IMDB : {{ $rating->ratings }} / 10 </p>
							@break
						@case(2)
							<p class=" price align-self-start p-1 bg-danger" style="font-size: 16px;border-bottom: none;"> Rotten Tommetoes : {{ $rating->ratings }} / 100 </p>  
							@break
						@case(3)
							<p class="price align-self-start p-1 bg-warning" style="font-size: 16px;border-bottom: none;"> Extra : {{ $rating->ratings }} / 5 </p>  
							@break
						@default
						  <div class="price align-self-start" style="font-size: 16px;border-bottom: none;">{{ $rating->ratings }}</div>
							
						@endswitch 
				  @endforeach
					</div>
					</div>
					</div>
				</div>
				@endif
			</div>
			@endforeach
		</div>
		<div class="upcome_2i row">
			@foreach ($upcoming as $key => $movie)
			@if ($loop->index >=4 AND $loop->index <8)
			<div class="col-md-3">
				<div class="upcome_2i1 clearfix position-relative">
				<div class="upcome_2i1i clearfix">
				<img src="{{$movie->photo ? asset('storage/'.$movie->photo) : asset('images/productioncompany.jpg')}}" width="270px" alt="abc" height="330px">
				</div>
					<div class="upcome_2i1i1 clearfix position-absolute top-0 text-center w-100">
					<h6 class="text-uppercase mb-0"><a class="button_2" href="#">View Details</a></h6>
					</div>
				</div>
				<div class="upcome_2i_last bg-white p-3">
					<div class="upcome_2i_lasti row">
					<div class="col-md-9 col-9">
					<div class="upcome_2i_lastil">
					<h5><a href="#">{{ $movie->title }}</a></h5>
					<h6 class="text-muted">Drama, Action</h6>
					<span class="col_red">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</span>
					</div>
					</div>
					</div>
				</div>
				@endif
			</div>
			@endforeach
		</div>
    </div>
	@else
	<div> NO Upcoming Movies</div>
	@endisset
</div>
</section>

  <!-- ======= Footer ======= -->
  @include('../layouts/homeFooter')
  <!-- ======= End Footer ======= -->