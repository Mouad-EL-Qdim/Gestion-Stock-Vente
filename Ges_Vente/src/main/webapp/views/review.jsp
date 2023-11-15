<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Clients Review UI </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
}

.container {
    width: 100%;
    height: 100vh;
    color: white;
    display: flex;
    align-items: center;
    flex-direction: column;
    justify-content: center;
    background-color: #090921;
}

h2 {
    font-size: 2rem;
    margin-bottom: 1rem;
    text-align: center;
}

.description {
    text-align: center;
    width: 43%;
}

.clientImage {
    display: flex;
    flex-direction: row;
    align-items: center;
}

.clientImage span {
    margin-left: 10px;
}

.clientImage img {
    width: 40px;
}

.reviewSection {
    padding: 1rem;
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-around;
}

.reviewItem {
    width: 300px;
    padding: 10px;
    margin: 1rem;
    cursor: pointer;
    border-radius: 10px;
    background-color: #10102a;
    border: 1px solid #10102a;
    transition: all .2s linear;
}

.reviewItem:hover {
    border-color: aqua;
    transform: scale(1.01);
    background-color: #090921;
    box-shadow: 0 0px 5px 0px #cbc0c0;
}

.top {
    margin-bottom: 1rem;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
}

.top ul {
    display: flex;
    list-style: none;
}

.top ul li {
    padding-left: 4px;
}

article p {
    font-size: 15px;
    font-weight: 100;
    margin-bottom: 1rem;
    font-family: system-ui;
}


@media screen and (max-width:700px) {
    .container {
        height: auto;
    }

    .description {
        width: 90%;
    }
}

@media screen and (max-width:375px) {
    .reviewSection {
        padding: 0;
    }

    .reviewItem {
        width: 100%;
    }

    .clientImage {
        margin-bottom: 0.6rem;
    }

    .top {
        align-items: center;
        flex-direction: column;
        justify-content: center;
    }
}
    </style>
   
    <link rel="stylesheet" href="css/all.min.css">
  
</head>

<body>
  
		
			
		
    <!-- Main Container for Clients Review -->
 		<div class="container">
 		
        <h2> Review Clients </h2>
       
        <!-- Clients Review Section -->
        <div class="reviewSection">

        <!-- Clients Review-1 Section Starts from Here  -->
            <div class="reviewItem">
                <div class="top">
                    <div class="clientImage">
                        <img src="images/client.png" alt="">
                        <span>Client-1</span>
                    </div>
                    <ul>
                        <li><i class="fa-solid fa-star"></i></li>
                        <li><i class="fa-solid fa-star"></i></li>
                        <li><i class="fa-solid fa-star"></i></li>
                        <li><i class="fa-solid fa-star"></i></li>
                        <li><i class="fa-solid fa-star"></i></li>
                    </ul>
                </div>
                <article>
                    <p class="review">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Fugit beatae ipsa
                        voluptatibus perferendis quos eaque nemo error tempora harum quas, laudantium tenetur, neque,
                        facere exercitationem!</p>
                    <p>Jui 10, 2023</p>
                </article>
            </div>

        <!-- Clients Review-2 Section Starts from Here  -->
            <div class="reviewItem">
                <div class="top">
                    <div class="clientImage">
                        <img src="images/client.png" alt="">
                        <span>Client-2</span>
                    </div>
                    <ul>
                        <li><i class="fa-solid fa-star"></i></li>
                        <li><i class="fa-solid fa-star"></i></li>
                        <li><i class="fa-solid fa-star"></i></li>
                        <li><i class="fa-solid fa-star"></i></li>
                        <li><i class="fa-regular fa-star"></i></li>
                    </ul>
                </div>
                <article>
                    <p class="review">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Fugit beatae ipsa
                        voluptatibus perferendis quos eaque nemo error tempora harum quas, laudantium tenetur, neque,
                        facere exercitationem!</p>
                    <p>Jui 08, 2023</p>
                </article>
            </div>

        <!-- Clients Review-3 Section Starts from Here  -->
            <div class="reviewItem">
                <div class="top">
                    <div class="clientImage">
                        <img src="images/client.png" alt="">
                        <span>Client-3</span>
                    </div>
                    <ul>
                        <li><i class="fa-solid fa-star"></i></li>
                        <li><i class="fa-solid fa-star"></i></li>
                        <li><i class="fa-solid fa-star"></i></li>
                        <li><i class="fa-regular fa-star"></i></li>
                        <li><i class="fa-regular fa-star"></i></li>
                    </ul>
                </div>
                <article>
                    <p class="review">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Fugit beatae ipsa
                        voluptatibus perferendis quos eaque nemo error tempora harum quas, laudantium tenetur, neque,
                        facere exercitationem!</p>
                    <p>jui 7, 2023</p>
                </article>
            </div>
        </div>
        <div class="col-auto">
				<ul class="top-nav">
					<li>
						<s:url namespace="/" action="indexHome" var="lien1"></s:url>
						<s:a href="%{lien1}"><i class="fas fa-sign-in-alt me-2"></i>Return Home</s:a>
					</li>
				</ul>
			</div>
    </div>	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>	
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
	<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/locale/bootstrap-table-fr-FR.min.js"></script>
</body>
</html>