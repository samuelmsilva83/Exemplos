<%@ Page Title="" Language="C#" MasterPageFile="~/sistema/SiteMasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="home_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="../css/entypo.css" rel="stylesheet" />
    <link href="../css/font-awesome.min.css" rel="stylesheet" />
    <link href="../css/animations.css" rel="stylesheet" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/mouldifi-core.css" rel="stylesheet" />
    <link href="../css/mouldifi-forms.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

	<!-- Main content -->
		<div class="main-content">
			<h1 class="page-title">Dashboard</h1>
			<div class="row">
				<div class="col-lg-6">
					<div class="row">
						<div class="col-md-6 animatedParent animateOnce z-index-50">
							<div class="panel minimal panel-default animated fadeInUp go">
								<div class="panel-heading clearfix"> 
									<div class="panel-title">Signups</div> 
									<ul class="panel-tool-options"> 
										<li class="dropdown">
											<a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false"><i class="icon-cog"></i></a>
											<ul class="dropdown-menu dropdown-menu-right">
												<li><a href="#"><i class="icon-arrows-ccw"></i> Update data</a></li>
												<li><a href="#"><i class="icon-list"></i> Detailed log</a></li>
												<li><a href="#"><i class="icon-chart-pie"></i> Statistics</a></li>
												<li class="divider"></li>
												<li><a href="#"><i class="icon-cancel"></i> Clear list</a></li>
											</ul>
										 </li>
									</ul> 
								</div> 
								<!-- panel body --> 
								<div class="panel-body">
									<div class="row col-with-divider">
										<div class="col-xs-6 text-center stack-order"> 
											<h1 class="no-margins">87</h1>
											<small>This week</small>
										</div>
										<div class="col-xs-6 text-center stack-order"> 
											<h1 class="no-margins">53</h1>
											<small>Last week</small>
										</div>
									</div>
								</div> 
							</div>
						</div>
						<div class="col-md-6 animatedParent animateOnce z-index-49">
							<div class="panel minimal panel-default animated fadeInUp go">
								<div class="panel-heading clearfix"> 
									<div class="panel-title">Last month sale</div> 
									<ul class="panel-tool-options"> 
										<li class="dropdown">
											<a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false"><i class="icon-cog"></i></a>
											<ul class="dropdown-menu dropdown-menu-right">
												<li><a href="#"><i class="icon-arrows-ccw"></i> Update data</a></li>
												<li><a href="#"><i class="icon-list"></i> Detailed log</a></li>
												<li><a href="#"><i class="icon-chart-pie"></i> Statistics</a></li>
												<li class="divider"></li>
												<li><a href="#"><i class="icon-cancel"></i> Clear list</a></li>
											</ul>
										 </li>
									</ul>  
								</div> 
								<!-- panel body --> 
								<div class="panel-body"> 
									<div class="stack-order">
										<h1 class="no-margins">$87,003</h1>
										<small>Raised from 89 orders.</small>
									</div>
									<div class="bar-chart-icon"></div>
								</div> 
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 animatedParent animateOnce z-index-48">
							<div class="panel minimal panel-default animated fadeInUp go">
								<div class="panel-heading clearfix"> 
									<div class="panel-title">Visitors</div> 
									<ul class="panel-tool-options"> 
										<li class="dropdown">
											<a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false"><i class="icon-cog"></i></a>
											<ul class="dropdown-menu dropdown-menu-right">
												<li><a href="#"><i class="icon-arrows-ccw"></i> Update data</a></li>
												<li><a href="#"><i class="icon-list"></i> Detailed log</a></li>
												<li><a href="#"><i class="icon-chart-pie"></i> Statistics</a></li>
												<li class="divider"></li>
												<li><a href="#"><i class="icon-cancel"></i> Clear list</a></li>
											</ul>
										 </li>
									</ul>  
								</div> 
								<!-- panel body --> 
								<div class="panel-body">
									<div class="stack-order">
										<h1 class="no-margins">823</h1>
										<small>New visits this month</small>
									</div>
									<div class="bar-chart-icon"></div>
								</div> 
							</div>
						</div>
						<div class="col-md-6 animatedParent animateOnce z-index-47">
							<div class="panel minimal panel-default animated fadeInUp go">
								<div class="panel-heading no-border clearfix"> 
									<ul class="panel-tool-options"> 
										<li class="dropdown">
											<a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false"><i class="icon-cog"></i></a>
											<ul class="dropdown-menu dropdown-menu-right">
												<li><a href="#"><i class="icon-arrows-ccw"></i> Update data</a></li>
												<li><a href="#"><i class="icon-list"></i> Detailed log</a></li>
												<li><a href="#"><i class="icon-chart-pie"></i> Statistics</a></li>
												<li class="divider"></li>
												<li><a href="#"><i class="icon-cancel"></i> Clear list</a></li>
											</ul>
										 </li>
									</ul>  
								</div> 
								<!-- panel body --> 
								<div class="panel-body panel-content"> 
									<div class="stack-order text-center">
										<h1>7856</h1>
										<h4>Products sold so far</h4>
									</div>
								</div> 
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 animatedParent animateOnce z-index-46">
							<div class="panel panel-default animated fadeInUp go">
								<div class="panel-body">
									<h2>Recent comments from customers</h2>
									<ul class="comments-list removeable-list">
										<li>
											<div class="comment-head"><a href="#/">Jassica</a> commented on <a href="#/">4 keys to make your business unique</a></div>
											<div class="comment-text">
												<p>Thank you for posting such a wonderful content. The writing was outstanding. Subscribed to latest from you as well :)</p>
											</div>
											<div class="comment-footer">
												<button class="btn btn-sm btn-success">APPROVE</button>
												<button class="btn btn-sm btn-red">DELETE</button>
											</div>
											<a href="#/" class="remove"><img src="../images/icon-close.png" alt="Remove" title="Remove"></a>
										</li>
										<li>
											<div class="comment-head"><a href="#/">Jassica</a> commented on <a href="#/">4 keys to make your business unique</a></div>
											<div class="comment-text">
												<p>Thank you for posting such a wonderful content. The writing was outstanding. Subscribed to latest from you as well :)</p>
											</div>
											<div class="comment-footer">
												<button class="btn btn-sm btn-success">APPROVE</button>
												<button class="btn btn-sm btn-red">DELETE</button>
											</div>
											<a href="#/" class="remove"><img src="../images/icon-close.png" alt="Remove" title="Remove"></a>
										</li>
										<li>
											<div class="comment-head"><a href="#/">Jassica</a> commented on <a href="#/">4 keys to make your business unique</a></div>
											<div class="comment-text">
												<p>Thank you for posting such a wonderful content. The writing was outstanding. Subscribed to latest from you as well :)</p>
											</div>
											<div class="comment-footer">
												<button class="btn btn-sm btn-success">APPROVE</button>
												<button class="btn btn-sm btn-red">DELETE</button>
											</div>
											<a href="#/" class="remove"><img src="../images/icon-close.png" alt="Remove" title="Remove"></a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 animatedParent animateOnce z-index-45">
							<div class="panel panel-default animated fadeInUp">
								<div class="panel-heading no-border clearfix"> 
									<h3 class="panel-title">VISIT STATS</h3>
									<ul class="panel-tool-options"> 
										<li class="dropdown">
											<a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false"><i class="icon-cog icon-2x"></i></a>
											<ul class="dropdown-menu dropdown-menu-right">
												<li><a href="#"><i class="icon-arrows-ccw"></i> Update data</a></li>
												<li><a href="#"><i class="icon-list"></i> Detailed log</a></li>
												<li><a href="#"><i class="icon-chart-pie"></i> Statistics</a></li>
												<li class="divider"></li>
												<li><a href="#"><i class="icon-cancel"></i> Clear list</a></li>
											</ul>
										 </li>
									</ul> 
								</div> 
								<!-- panel body --> 
								<div class="panel-body"> 
									<div class="canvas-chart has-doughnut-legend">
										<canvas id="doughnutChart" width="1136" height="834" style="width: 568px; height: 417px;"></canvas>
									</div>
									<div class="height-13"></div>
								<ul class="doughnut-legend"><li><span style="background-color:#2bbfba"></span>Only Visited</li><li><span style="background-color:#00b8ce"></span>Purchased</li><li><span style="background-color:#e5e8eb"></span>Bounced</li></ul></div> 
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="animatedParent animateOnce z-index-44">
						<div class="panel-group animated fadeInUp go">
							<div class="panel panel-invert">
								<div class="panel-heading no-border clearfix"> 
									<h2 class="panel-title">Revenue</h2>
									<ul class="panel-tool-options"> 
										<li><a href="#" id="Revenuelines"><i class="icon-chart-line icon-2x"></i></a></li>
										<li class="dropdown">
											<a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false"><i class="icon-cog icon-2x"></i></a>
											<ul class="dropdown-menu dropdown-menu-right">
												<li><a href="#"><i class="icon-arrows-ccw"></i> Update data</a></li>
												<li><a href="#"><i class="icon-list"></i> Detailed log</a></li>
												<li><a href="#"><i class="icon-chart-pie"></i> Statistics</a></li>
												<li class="divider"></li>
												<li><a href="#"><i class="icon-cancel"></i> Clear list</a></li>
											</ul>
										 </li>
									</ul> 
								</div>
								<div class="panel-body">
									<div class="flot-chart">
										<div id="Revenue-lines" class="flot-chart-content" style="padding: 0px; position: relative;"><canvas class="flot-base" width="648" height="200" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 648px; height: 200px;"></canvas><div class="flot-text" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);"><div class="flot-x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div style="position: absolute; max-width: 40px; top: 167px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 33px; text-align: center;">Oct 01</div><div style="position: absolute; max-width: 40px; top: 167px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 91px; text-align: center;">Oct 04</div><div style="position: absolute; max-width: 40px; top: 167px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 149px; text-align: center;">Oct 07</div><div style="position: absolute; max-width: 40px; top: 167px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 207px; text-align: center;">Oct 10</div><div style="position: absolute; max-width: 40px; top: 167px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 265px; text-align: center;">Oct 13</div><div style="position: absolute; max-width: 40px; top: 167px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 323px; text-align: center;">Oct 16</div><div style="position: absolute; max-width: 40px; top: 167px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 381px; text-align: center;">Oct 19</div><div style="position: absolute; max-width: 40px; top: 167px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 439px; text-align: center;">Oct 22</div><div style="position: absolute; max-width: 40px; top: 167px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 497px; text-align: center;">Oct 25</div><div style="position: absolute; max-width: 40px; top: 167px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 555px; text-align: center;">Oct 28</div><div style="position: absolute; max-width: 40px; top: 167px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 613px; text-align: center;">Oct 31</div></div><div class="flot-y-axis flot-y1-axis yAxis y1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div style="position: absolute; top: 156px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 37px; text-align: right;">0</div><div style="position: absolute; top: 132px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 26px; text-align: right;">500</div><div style="position: absolute; top: 108px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 20px; text-align: right;">1000</div><div style="position: absolute; top: 85px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 20px; text-align: right;">1500</div><div style="position: absolute; top: 61px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 20px; text-align: right;">2000</div><div style="position: absolute; top: 37px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 20px; text-align: right;">2500</div><div style="position: absolute; top: 14px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 11px; line-height: 13px; font-family: &quot;Source Sans Pro&quot;, sans-serif; color: rgb(214, 216, 219); left: 20px; text-align: right;">3000</div></div></div><canvas class="flot-overlay" width="648" height="200" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 648px; height: 200px;"></canvas><div class="legend"><div style="position: absolute; width: 69px; height: 16px; top: 25px; right: 25px; background-color: rgb(255, 255, 255); opacity: 0.85;"> </div><table style="position:absolute;top:25px;right:25px;;font-size:smaller;color:#646464"><tbody><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid #fff;overflow:hidden"></div></div></td><td class="legendLabel">Revenue($)</td></tr></tbody></table></div></div>
									</div>
									<div id="placeholder_overview" style="width: 100%; height: 60px; padding: 0px; position: relative;"><canvas class="flot-base" width="648" height="60" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 648px; height: 60px;"></canvas><canvas class="flot-overlay" width="648" height="60" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 648px; height: 60px;"></canvas></div>
								</div>
							</div>
							<div class="panel">
								<div class="panel-body">
									<div class="panel-update-content">
										<div class="row-revenue clearfix">
											<div class="col-xs-6">
												<h5>Gross Revenue</h5>
												<h1>9,362.74</h1>
											</div>
											<div class="col-xs-6">
												<h5>Net Revenue</h5>
												<h1>6,734.89</h1>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="animatedParent animateOnce z-index-43">
						<div class="panel panel-default no-border animated fadeInUp go">
							<div class="panel-heading no-border clearfix"> 
								<h2 class="panel-title">Latest Activities</h2>
								<ul class="panel-tool-options"> 
									<li class="dropdown">
										<a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false"><i class="icon-cog icon-2x"></i></a>
										<ul class="dropdown-menu dropdown-menu-right">
											<li><a href="#"><i class="icon-arrows-ccw"></i> Update data</a></li>
											<li><a href="#"><i class="icon-list"></i> Detailed log</a></li>
											<li><a href="#"><i class="icon-chart-pie"></i> Statistics</a></li>
											<li class="divider"></li>
											<li><a href="#"><i class="icon-cancel"></i> Clear list</a></li>
										</ul>
									 </li>
								</ul>
							</div>	 
							<div class="panel-body">
								<ul class="list-item">
									<li>
										<div class="feed-element">
											<div class="feed-head"><a href="#/">Jassica</a> commented on <a href="#/">4 keys to make your business unique</a></div>
											<div class="feed-content">
												<p>Thank you for posting such a wonderful content. The writing was outstanding. Subscribed to latest from you as well :)</p>
											</div>	
										</div>
									</li>
									<li>
										<div class="feed-element">
											<div class="feed-head"><a href="#/">Jassica</a> commented on <a href="#/">4 keys to make your business unique</a></div>
											<div class="feed-content">
												<p>Thank you for posting such a wonderful content. The writing was outstanding. Subscribed to latest from you as well :)</p>
											</div>	
										</div>
									</li>
									<li>
										<div class="feed-element">
											<div class="feed-head"><a href="#/">Morrise</a> added 3 new photos to the gallery <a href="#/">Australia Trip</a></div>
											<div class="feed-content">
												<div class="media-inline">
													<img src="../images/media-1.jpg" alt="Media" title="Media">
													<img src="../images/media-2.jpg" alt="Media" title="Media">
													<img src="../images/media-3.jpg" alt="Media" title="Media">
												</div>
											</div>	
										</div>
									</li>
									<li>
										<div class="feed-element">
											<div class="feed-head"><a href="#/">Stella Johnson</a> is now connected with <a href="#/">Tom Brown</a></div>
											<div class="feed-content">
												<div class="connected-users">
													<img class="pull-left img-circle avatar" src="../images/stella-johnson.png" alt="">
													<i class="pull-left icon-shareable icon-2x"></i>
													<img class="pull-left img-circle avatar" src="../images/man-3.jpg" alt="">
												</div>
											</div>	
										</div>
									</li>
									<li>
										<div class="feed-element">
											<div class="feed-head"><a href="#/">Domnic</a> is feeling <a href="#/">blessed</a></div>
											<div class="feed-content">
												<p>Today I’m blessed with a baby girl. Its not easy to express the feelings :)</p>
											</div>	
										</div>
									</li>
								</ul>
							</div>
							<button class="btn btn-primary btn-block btn-2x">SHOW MORE</button>
						</div>
					</div>
					<div class="animatedParent animateOnce z-index-42">
						<div class="panel panel-default animated fadeInUp">
							<div class="panel-body">
								<div class="speed-analyzer">
									<div class="speed-analyzer-text">
										<h4>Download Speed Analyzer</h4>
										<p>Speed test run on different anlayzers including google and YSlow.</p>
									</div>
									<div class="speed-score">
										<strong class="score">82</strong>
										<span class="uppercase">Google Score</span>
									</div>
									<div class="speed-score">
										<strong class="score">73</strong>
										<span class="uppercase">YSlow Score</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 animatedParent animateOnce z-index-41">
					<div class="panel panel-default animated fadeInUp">
						<div class="panel-heading no-border clearfix"> 
							<h2 class="panel-title">TO-DOs for today</h2>
							<ul class="panel-tool-options"> 
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false"><i class="icon-cog icon-2x"></i></a>
									<ul class="dropdown-menu dropdown-menu-right">
										<li><a href="#"><i class="icon-arrows-ccw"></i> Update data</a></li>
										<li><a href="#"><i class="icon-list"></i> Detailed log</a></li>
										<li><a href="#"><i class="icon-chart-pie"></i> Statistics</a></li>
										<li class="divider"></li>
										<li><a href="#"><i class="icon-cancel"></i> Clear list</a></li>
									</ul>
								 </li>
							</ul> 
						</div> 
						<!-- panel body --> 
						<div class="panel-body">
							<ul class="list-item todo-list"> 
								<li> 
									<div class="checkbox checkbox-replace checkbox-primary"> 
										<input type="checkbox" id="task-1"> <label for="task-1">Fresh look &amp; feel to repaint the website according to the new brand logo.</label> 
									</div> 
								</li> 
								<li> 
									<div class="checkbox checkbox-replace checkbox-primary checked"> 
										<input type="checkbox" id="task-2" checked=""> <label for="task-2">Need some new responsive design for the wbesite.</label> 
									</div> 
								</li> 
								<li> 
									<div class="checkbox checkbox-replace checkbox-primary"> 
										<input type="checkbox" id="task-3"> <label for="task-3">Fresh look &amp; feel to repaint the website according to the new brand logo. </label> 
									</div> 
								</li> 
								<li> 
									<div class="checkbox checkbox-replace checkbox-primary"> 
										<input type="checkbox" id="task-4"> <label for="task-4">Fresh look &amp; feel to repaint the website according to the new brand logo. </label> 
									</div> 
								</li> 
								<li> 
									<div class="checkbox checkbox-replace checkbox-primary"> 
										<input type="checkbox" id="task-5"> <label for="task-5">Fresh look &amp; feel to repaint the website according to the new brand logo. </label> 
									</div> 
								</li> 
							</ul>
							<div class="more">
								<button class="btn btn-primary">Click More</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 animatedParent animateOnce z-index-40">
					<div class="panel panel-default animated fadeInUp">
						<div class="panel-heading no-border clearfix"> 
							<h2 class="panel-title">Recent Members</h2>
							<ul class="panel-tool-options"> 
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false"><i class="icon-cog icon-2x"></i></a>
									<ul class="dropdown-menu dropdown-menu-right">
										<li><a href="#"><i class="icon-arrows-ccw"></i> Update data</a></li>
										<li><a href="#"><i class="icon-list"></i> Detailed log</a></li>
										<li><a href="#"><i class="icon-chart-pie"></i> Statistics</a></li>
										<li class="divider"></li>
										<li><a href="#"><i class="icon-cancel"></i> Clear list</a></li>
									</ul>
								 </li>
							</ul> 
						</div> 
						<!-- panel body --> 
						<div class="panel-body">
							<ul class="list-item member-list">
								<li>
									<div class="user-avatar">
										<img title="" alt="" class="img-circle avatar" src="../images/john-smith.png">
									</div>
									<div class="user-detail">
										<h5>John Smith</h5>
										<p>Joined 15 mins ago.</p>
									</div>
								</li>
								<li>
									<div class="user-avatar">
										<img title="" alt="" class="img-circle avatar" src="../images/domnic-brown.png">
									</div>
									<div class="user-detail">
										<h5>Domnic Brown</h5>
										<p>Joined 2 days ago.</p>
									</div>
								</li>
								<li>
									<div class="user-avatar">
										<img title="" alt="" class="img-circle avatar" src="../images/stella-johnson.png">
									</div>
									<div class="user-detail">
										<h5>Stella Johnson</h5>
										<p>Joined 1 day ago.</p>
									</div>
								</li>
								<li>
									<div class="user-avatar">
										<img title="" alt="" class="img-circle avatar" src="../images/alex-dolgove.png">
									</div>
									<div class="user-detail">
										<h5>Alex Dolgove</h5>
										<p>Joined 5 days ago.</p>
									</div>
								</li>
							</ul>
							<div class="more">
								<button class="btn btn-primary">Click More</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 animatedParent animateOnce z-index-39">
					<div class="panel panel-default animated fadeInUp">
						<div class="panel-heading no-border clearfix"> 
							<h2 class="panel-title">New Messages</h2>
							<ul class="panel-tool-options"> 
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false"><i class="icon-cog icon-2x"></i></a>
									<ul class="dropdown-menu dropdown-menu-right">
										<li><a href="#"><i class="icon-arrows-ccw"></i> Update data</a></li>
										<li><a href="#"><i class="icon-list"></i> Detailed log</a></li>
										<li><a href="#"><i class="icon-chart-pie"></i> Statistics</a></li>
										<li class="divider"></li>
										<li><a href="#"><i class="icon-cancel"></i> Clear list</a></li>
									</ul>
								 </li>
							</ul> 
						</div> 
						<!-- panel body --> 
						<div class="panel-body">
							<ul class="list-item message-list">
								<li>
									<i class="icon-mail icon-2x"></i>
									<div class="message-body">
										<h5>Interested in buying your pro</h5>
										<p>Your product sounds interesting I would love to check this ne...</p>
									</div>
								</li>
								<li>
									<i class="icon-mail icon-2x"></i>
									<div class="message-body">
										<h5>Interested in buying your pro</h5>
										<p>Your product sounds interesting I would love to check this ne...</p>
									</div>
								</li>
								<li>
									<i class="icon-mail icon-2x"></i>
									<div class="message-body">
										<h5>Interested in buying your pro</h5>
										<p>Your product sounds interesting I would love to check this ne...</p>
									</div>
								</li>
								<li>
									<i class="icon-mail icon-2x"></i>
									<div class="message-body">
										<h5>Interested in buying your pro</h5>
										<p>Your product sounds interesting I would love to check this ne...</p>
									</div>
								</li>
							</ul>
							<div class="more">
								<button class="btn btn-primary">Click More</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 animatedParent animateOnce z-index-38">
					<div class="panel panel-default animated fadeInUp">
						<div class="panel-heading no-border clearfix"> 
							<h2 class="panel-title">Site Traffic</h2>
							<ul class="panel-tool-options"> 
								<li><a href="#" id="lines"><i class="icon-chart-line icon-2x"></i></a></li>
								<li><a href="#" id="bars"><i class="icon-chart-bar icon-2x"></i></a></li>
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false"><i class="icon-cog icon-2x"></i></a>
									<ul class="dropdown-menu dropdown-menu-right">
										<li><a href="#"><i class="icon-arrows-ccw"></i> Update data</a></li>
										<li><a href="#"><i class="icon-list"></i> Detailed log</a></li>
										<li><a href="#"><i class="icon-chart-pie"></i> Statistics</a></li>
										<li class="divider"></li>
										<li><a href="#"><i class="icon-cancel"></i> Clear list</a></li>
									</ul>
								 </li>
							</ul>
						</div>
						<div class="panel-body">
							<div class="flot-chart float-chart-lg">
								<div id="graph-lines" class="flot-chart-content" style="padding: 0px; position: relative;"><canvas class="flot-base" width="648" height="220" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 648px; height: 220px;"></canvas><div class="flot-text" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);"><div class="flot-x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 28px; text-align: center;">Dec 01</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 87px; text-align: center;">Dec 02</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 146px; text-align: center;">Dec 03</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 204px; text-align: center;">Dec 04</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 263px; text-align: center;">Dec 05</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 321px; text-align: center;">Dec 06</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 380px; text-align: center;">Dec 07</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 439px; text-align: center;">Dec 08</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 497px; text-align: center;">Dec 09</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 556px; text-align: center;">Dec 10</div></div><div class="flot-y-axis flot-y1-axis yAxis y1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div class="flot-tick-label tickLabel" style="position: absolute; top: 171px; left: 31px; text-align: right;">0</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 118px; left: 20px; text-align: right;">100</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 65px; left: 20px; text-align: right;">200</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 12px; left: 20px; text-align: right;">300</div></div></div><canvas class="flot-overlay" width="648" height="220" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 648px; height: 220px;"></canvas></div>
								<div id="graph-bars" class="flot-chart-content" style="padding: 0px; position: relative; display: none;"><canvas class="flot-base" width="969" height="220" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 969px; height: 220px;"></canvas><div class="flot-text" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);"><div class="flot-x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 30px; text-align: center;">Dec 01</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 120px; text-align: center;">Dec 02</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 211px; text-align: center;">Dec 03</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 302px; text-align: center;">Dec 04</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 393px; text-align: center;">Dec 05</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 483px; text-align: center;">Dec 06</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 574px; text-align: center;">Dec 07</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 665px; text-align: center;">Dec 08</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 755px; text-align: center;">Dec 09</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 80px; top: 184px; left: 846px; text-align: center;">Dec 10</div></div><div class="flot-y-axis flot-y1-axis yAxis y1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div class="flot-tick-label tickLabel" style="position: absolute; top: 171px; left: 31px; text-align: right;">0</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 118px; left: 20px; text-align: right;">100</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 65px; left: 20px; text-align: right;">200</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 12px; left: 20px; text-align: right;">300</div></div></div><canvas class="flot-overlay" width="969" height="220" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 969px; height: 220px;"></canvas></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Footer -->
			<footer class="animatedParent animateOnce z-index-10"> 
				<div class="footer-main animated fadeInUp slow">© 2016 <strong>Mouldifi</strong> Admin Theme by <a target="_blank" href="#/">G-axon</a> </div>
			</footer>	
			<!-- /footer -->
		
	  </div>
	  <!-- /main content -->
    

<!--Load JQuery-->
    <script src="../js/jquery.min.js"></script>
<!-- Load CSS3 Animate It Plugin JS -->
    <script src="../js/css3-animate-it.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.metisMenu.js"></script>
    <script src="../js/jquery-ui.js"></script>
    <script src="../js/jquery.blockUI.js"></script>
<!--Float Charts-->
    <script src="../js/jquery.flot.min.js"></script>
    <script src="../js/jquery.flot.tooltip.min.js"></script>
    <script src="../js/jquery.flot.resize.min.js"></script>
    <script src="../js/jquery.flot.selection.min.js"></script>     
    <script src="../js/jquery.flot.pie.min.js"></script>
    <script src="../js/jquery.flot.time.min.js"></script>
    <script src="../js/functions.js"></script>

<!--ChartJs-->
    <script src="../js/Chart.min.js"></script>

<!--$(document).ready-->
    <script src="../js/documentReady.js"></script>

</asp:Content>

