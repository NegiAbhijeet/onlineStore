<div class="footer">
	<div class="container">
		<div class="row">
			<div class="footer_col_1">
				<h3>Download Our App</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
			</div>
			<div class="footer_col_2">
				<img src="images/logo2.png">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>
			<div class="footer_col_3">
				<h3>Usefull Links</h3>
				<ul>
					<li>Home</li>
					<li>Home</li>
					<li>Home</li>
					<li>Home</li>
				</ul>
			</div>
			<div class="footer_col_4">
				<h3>Follow Us</h3>
				<ul>
					<li>Facebook</li>
					<li>Facebook</li>
					<li>Facebook</li>
					<li>Facebook</li>
				</ul>
			</div>
		</div>
		<hr>
		<p class="copyright">Copyright 2020 - SHOPON</p>
	</div>
</div>
<script>
	var MenuItems=document.getElementById("MenuItems");
	MenuItems.style.maxHeight="0px";

	function menutoggle(){
		if(MenuItems.style.maxHeight=="0px"){
			MenuItems.style.maxHeight="200px";
		}
		else{
			MenuItems.style.maxHeight="0px";
		}
	}
	var productImg=document.getElementById("productImg");
	var small_img=document.getElementsByClassName("small_img");

	small_img[0].onclick=function(){
		productImg.src=small_img[0].src;
	}
	small_img[1].onclick=function(){
		productImg.src=small_img[1].src;
	}
	small_img[2].onclick=function(){
		productImg.src=small_img[2].src;
	}
	small_img[3].onclick=function(){
		productImg.src=small_img[3].src;
	}
</script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
</body>
</html>