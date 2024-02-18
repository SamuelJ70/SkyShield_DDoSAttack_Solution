<html><body>
<style>


.grid {
  display: grid;
  max-width: 960px;
  margin: 0 auto;
  grid-template-columns: repeat(3, 1fr);
}

.card {
  border: 4px solid rgb(24,154,153);
  background-color: #fff;
  display: contents;
}


.card:nth-child(1) h2{
  grid-column: 1;
  grid-row: 1;
}
.card:nth-child(1) img{
  grid-column: 1;
  grid-row: 2;
}
.card:nth-child(1) .inner{
  grid-column: 1;
  grid-row: 3;
}
.card:nth-child(1) footer{
  grid-column: 1;
  grid-row: 4;
}
.card:nth-child(2) h2{
  grid-column: 2;
  grid-row: 1;
}
.card:nth-child(2) img{
  grid-column: 2;
  grid-row: 2;
}
.card:nth-child(2) .inner{
  grid-column: 2;
  grid-row: 3;
}
.card:nth-child(2) footer{
  grid-column: 2;
  grid-row: 4;
}

.card:nth-child(3) h2{
  grid-column: 3;
  grid-row: 1;
}
.card:nth-child(3) img{
  grid-column: 3;
  grid-row: 2;
}
.card:nth-child(3) .inner{
  grid-column: 3;
  grid-row: 3;
}
.card:nth-child(3) footer{
  grid-column: 3;
  grid-row: 4;
}
.card:nth-child(4) h2{
  grid-column: 1;
 grid-row: 5;
}
.card:nth-child(4) img{
  grid-column: 1;
  grid-row: 6;
}
.card:nth-child(4) .inner{
  grid-column: 1;
  grid-row: 7;

}
.card:nth-child(4) footer{
  grid-column: 1;
  grid-row: 8;

}
.card:nth-child(5) h2{
  grid-column: 2;
grid-row: 5;
}
.card:nth-child(5) img{
  grid-column: 2;
  grid-row: 6;

}
.card:nth-child(5) .inner{
  grid-column: 2;
  grid-row: 7;

}
.card:nth-child(5) footer{
  grid-column: 2;
  grid-row: 8;

}

.card:nth-child(6) h2{
  grid-column: 3;
  grid-row: 5;

}
.card:nth-child(6) img{
  grid-column: 3;
  grid-row: 6;

}
.card:nth-child(6) .inner{
  grid-column: 3;
  grid-row: 7;

}
.card:nth-child(6) footer{
  grid-column: 3;
  grid-row: 8;

}

.card h2,
.card .inner,
.card footer {
  padding: 10px;
}

.card h2 {
  margin: 0;
  color: #fff;
  background-color: rgb(3,99,143);
  border-bottom: 4px solid rgb(24,154,153);
}

.card footer {
  background-color: rgb(182,222,211);
}

img {
  max-width: 100%;
  display: block;
}

* { box-sizing: border-box;}

body {
  font: 125%/1.4 'Roboto', sans-serif;
  background-color: rgb(243,247,223);
}

h1, h2, h3 {
  font-family: 'Roboto Slab', serif;
}



</style>
<div class="grid">
  
   <div class="card">
     <h2>My title</h2>
     <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/12005/cssday-img2.jpg">
     <div class="inner">
       <p>The contents.</p>
     </div>
     <footer class="cta">Footer contents</footer>
   </div>
   
    
   <!--  <div class="card">
     <h2>My title</h2>
     <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/12005/cssday-img3.jpg">
     <div class="inner">
       <p>The contents. I have a lot of content, more content than the other ones.</p>
     </div>
     <footer class="cta">Footer contents</footer>
   </div>
  <div class="card">
     <h2>My title</h2>
     <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/12005/cssday-img4.jpg">
     <div class="inner">
       <p>The contents.</p>
     </div>
     <footer class="cta">Footer contents, I have a mahoosive footer. Just look at this stuff.</footer>
   </div>
  <div class="card">
     <h2>My title</h2>
     <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/12005/cssday-img1.jpg">
     <div class="inner">
       <p>The contents.</p>
     </div>
     <footer class="cta">Footer contents</footer>
   </div>
  <div class="card">
     <h2>My title</h2>
     <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/12005/cssday-img2.jpg">
     <div class="inner">
       <p>The contents.</p>
     </div>
     <footer class="cta">Footer contents</footer>
   </div>
  <div class="card">
     <h2>My title this one is very long indeed</h2>
     <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/12005/cssday-img4.jpg">
     <div class="inner">
       <p>The contents.</p>
     </div>
     <footer class="cta">Footer contents</footer>
   </div> -->
  
  
</div>

</body></html>