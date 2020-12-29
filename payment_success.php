<style>
	body {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 80vh;
  flex-direction: column;
  background-color: #F7D358;
}
h2 {
  font-family: Helvetica;
  font-size: 36px;
  margin-top: 40px;
  color: #333;
  opacity: 0;
  animation: 0.6s title ease-in-out;
  animation-delay: 1.2s;
  animation-fill-mode: forwards;
}
.circle {
  stroke-dasharray: 1194;
  stroke-dashoffset: 1194;
}
.tick {
  stroke-dasharray: 350;
  stroke-dashoffset: 350;
}
svg .circle {
  animation: circle 1s ease-in-out;
  animation-fill-mode: forwards;
}
svg .tick {
  animation: tick 0.8s ease-out;
  animation-fill-mode: forwards;
  animation-delay: 0.95s;
}
.continue{
  /*text-decoration: none;*/
  font-family: Helvetica;
  font-size: 25px;
/*  margin-top: 40px;*/
  color: blue;
  opacity: 0;
  animation: 0.6s title ease-in-out;
  animation-delay: 1.2s;
  animation-fill-mode: forwards;
}

@keyframes circle {
  from {
    stroke-dashoffset: 1194;
  }
  to {
    stroke-dashoffset: 2388;
  }
}

@keyframes tick {
  form {
    stroke-dashoffset: 350;
  }
  to {
    stroke-dashoffset: 0;
  }
}

@keyframes title {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

</style>
<?php
session_start();
include "db.php";
echo'<svg width="400" height="400">
  <circle fill="none" stroke="#68E534" stroke-width="20" cx="200" cy="200" r="190" transform="rotate(-90 200 200)" class="circle" />
  <polyline fill="none" stroke="#68E534" stroke-width="24" points="88,214 173,284 304,138" stroke-linecap="round" stroke-linejoin="round" class="tick" />
</svg>
<h2>THANH TOÁN THÀNH CÔNG</h2>
 <a href="index.php" class="continue">Tiếp Tục Mua Sắm</a>
'
?>