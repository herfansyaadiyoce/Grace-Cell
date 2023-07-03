<?php
include 'header.php';
?>
<script id="jsbin-javascript">
	(function(global) {
		if (typeof(global) === "undefined") {
			throw new Error("window is undefined");
		}
		var _hash = "!";
		var noBackPlease = function() {
			global.location.href += "#";
			global.setTimeout(function() {
				global.location.href += "!";
			}, 50);
		};
		// Earlier we had setInerval here....
		global.onhashchange = function() {
			if (global.location.hash !== _hash) {
				global.location.hash = _hash;
			}
		};
		global.onload = function() {
			noBackPlease();
			// disables backspace on page except on input fields and textarea..
			document.body.onkeydown = function(e) {
				var elm = e.target.nodeName.toLowerCase();
				if (e.which === 8 && (elm !== 'input' && elm !== 'textarea')) {
					e.preventDefault();
				}
				e.stopPropagation();
			};
		};
	})(window);
</script>
<div class="main main-raised">

	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- ASIDE -->
				<div id="aside" class="col-md-3">
					<!-- aside Widget -->
					<div id="get_category">
					</div>
					<!-- aside Widget -->
					<div class="aside">
						<h3 class="aside-title">Penjualan Terbaik</h3>
						<div id="get_product_home">
						</div>
					</div>
					<!-- /aside Widget -->
				</div>
				<!-- /ASIDE -->

				<!-- STORE -->
				<div id="store" class="col-md-9">
					<!-- store top filter -->
					<div class="store-filter clearfix">
						<div class="store-sort">
							<label>
								Show:
								<select class="input-select">
									<option value="0">1</option>
									<option value="1">2</option>
								</select>
							</label>
						</div>
					</div>
					<!-- /store top filter -->
					<!-- store products -->
					<div class="row" id="product-row">
						<div class="col-md-12 col-xs-12" id="product_msg">
						</div>
						<!-- product -->
						<div id="get_product">
							<!--Here we get product jquery Ajax Request-->
						</div>
						<!-- /product -->
					</div>
					<!-- store bottom filter -->
					<div class="store-filter clearfix">
						<span class="store-qty">Showing products</span>
						<ul class="store-pagination" id="pageno">
							<li><a class="active" href="#aside">1</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
						</ul>
					</div>
					<!-- /store bottom filter -->
				</div>
				<!-- /STORE -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
</div>
<?php
include "footer.php";
?>