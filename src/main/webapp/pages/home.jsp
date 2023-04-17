<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

<style>





{box-sizing:border-box}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Make the images invisible by default */
.Containers {
  display: none;
}

/* forward & Back buttons */
.Back, .forward {
  cursor: pointer;
  position: absolute;
  top: 48%;
  width: auto;
  margin-top: -23px;
  padding: 17px;
  color: grey;
  font-weight: bold;
  font-size: 19px;
  transition: 0.4s ease;
  border-radius: 0 5px 5px 0;
  user-select: none;
}

/* Place the "forward button" to the right */
.forward {
  right: 0;
  border-radius: 4px 0 0 4px;
}

/*when the user hovers,add a black background with some little opacity */
.Back:hover, .forward:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption Info */
.Info {
  color: #e3e3e3;
  font-size: 16px;
  padding: 10px 14px;
  position: absolute;
  bottom: 10px;
  width: 100%;
  text-align: center;
}

/* Worknumbering (1/3 etc) */
.MessageInfo {
  color: #f2f2f3;
  font-size: 14px;
  padding: 10px 14px;
  position: absolute;
  top: 0;
}

/* The circles or bullets and indicators */
.dots {
  cursor: pointer;
  height: 16px;
  width: 16px;
  margin: 0 3px;
  background-color: #acc;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.5s ease;
}

.enable, .dots:hover {
  background-color: #717161;
}

/* Faint animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.4s;
  animation-name: fade;
  animation-duration: 1.4s;
}

@-webkit-keyframes fade {
  from {opacity: .5}
  to {opacity: 2}
}

@keyframes fade {
  from {opacity: .5}
  to {opacity: 2}
}

/*   .carousel {
    display: flex;
    overflow-x: hidden;
    transition: transform 0.5s ease-in-out;
  }

  .carousel img {
    width: 100%;
    height: auto;
  }

  .carousel-btn {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    width: 40px;
    height: 40px;
    background-color: transparent;
    border: none;
    cursor: pointer;
  }

  .carousel-prev {
    left: 10px;
  }

  .carousel-next {
    right: 10px;
  } 
</style>

<%-- Previous and Next Button Script --%>
 <script>
  const carousel = document.querySelector(".carousel");
  const prevBtn = document.querySelector(".carousel-prev");
  const nextBtn = document.querySelector(".carousel-next");
  const carouselWidth = carousel.offsetWidth;

  let position = 0;

  nextBtn.addEventListener("click", () => {
    position -= carouselWidth;
    position = Math.max(position, -carouselWidth * (carousel.children.length - 1));
    carousel.style.transform = `translateX(${position}px)`;
  });

  prevBtn.addEventListener("click", () => {
    position += carouselWidth;
    position = Math.min(position, 0);
    carousel.style.transform = `translateX(${position}px)`;
  });
</script> 




 <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <link href="/webjars/bootstrap/5.0.2/css/bootstrap.min.css" rel="stylesheet">
<script src="/webjars/bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
  
</head>
<body>

<script src="/webjars/bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>








  <div class="carousel-container">
  <div class="carousel-wrapper">
    <div class="carousel">
      <img src="/carousel-images/a.jpg?text=Slide+1" alt="Slide 1">
     
    </div>
  </div>  
  <button class="carousel-prev">Prev</button>
  <button class="carousel-next">Next</button>
</div>
 <a href="${pageContext.request.contextPath}/loginhomepage">
            <button type="button" style="background-color: yellow;">Login</button>
         </a>

          <a href="${pageContext.request.contextPath}/regester">
            <button type="button" style="background-color: yellow;">Register New User</button>
          </a>
         
</body>
</html>