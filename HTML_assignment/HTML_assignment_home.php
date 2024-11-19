<!DOCTYPE html>
<html lang="en-ie">
<head>
    <meta charset="utf-8" />
    <title>UL Fencing Home Page</title>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="HTML_assignment_home.css"> 
</head>
<body>
    <header>
        <a href="HTML_assignment_home.html"><img class="logo"  src = "logo.png" alt="UL Fencing Logo featuring a wolf with three different types of swords behind it."></a>
        <nav>
            <ul>
                <li><a href="HTML_assignment_home.html"><img class="homeicon" src="homeicon.png" alt="homeicon">Home</a></li>
                <li><a href="HTML_assignment_information.html"><img class="infoicon" src="infoicon.png" alt="infoicon">Information</a></li>
                <li><a href="HTML_assignment_whatisfencing.html"><img class="swordicon" src="swordicon.png" alt="swordicon">What is fencing?</a></li>
                <li><a href="HTML_assignment_about.html"><img class="questionicon" src="Icon-round-Question_mark.svg.png" alt="questionicon">About us</a></li>
                <li><a href="HTML_assignment_contact.html"><img class="emailicon" src="emailicon.png" alt="emailicon">Contact us</a></li>                
            </ul>
        </nav>
    </header>
    
    <section id="main">

        <div class="hero-section">
            <img src="fencing_homepage.jpg" alt="Background Image" class="hero-image">
            <div class="hero-text">
              <h1>Welcome to UL Fencing <br> The best armed club in UL!</h1>
            </div>
          </div>

          <div class="introhome">
            <p>UL Fencing is a club under the UL Wolfes clubs and societies. </p>
            /*live counter here in the same box?*/
			// table within nested php code to get display "Fun" stats
			<?php
				//give credntials to access  sql database 
				$host = "localhost";
				$user = "root";
				//we don't care about security 
				$pass = "";
				$dbname = "fencingul";
				
						//connecting to database 
						
						$conn = new mysqli($host,$user,$pass,$dbname);
							if($conn -> connect_error){
								die("oops" . $conn->connect_error);
								
							} else 
								//ensure connection
										echo "work?";
										
					//making sql query					
					$sql = "SELECT BrokenSword, MemberNUmber, Tournemts FROM funny";
					
					//execute query
					$result = $conn->query($sql);
					
					if ($result && $result->num_rows > 0) {
							
					// Fetch the row
					$row = $result->fetch_assoc();
    
					// Store values into PHP variables
					$value1 = $row['BrokenSword'];
					$value2 = $row['MemberNUmber'];
					
					echo "how many swords have I broken? $value1";
					
					} else {
						
						echo "not working!";
					}
					
					
			?>			
			
			
          </div>
			
    </section>
    <footer>
        <div class="footer-logo-section">
            <img src="UL-logo.png" alt="UL Logo">
            <ul class="footer-links">                    
                <li><img src="fencing_ireland.png" alt="Fencing Ireland Logo"></li>
                <li><h4>Fencing Ireland Insurance</h4></li>
            </ul>
            <img src="ul_wolfes.png" alt="UL Wolfes Logo">                
            <img src="logo.png" alt="UL Fencing Logo">
            <ul>
                <li><a href="HTML_assignment_contact.html">Contact us</a></li>
                <li>Email: ul.fencing@gmail.com</li>
                <li>
                    <div class="media">
                        <span class="username">@ulfencingclub</span>
                        <img class="instagram" src="instagram.png" alt="Instagram">
                    </div>
                </li>
            </ul>
        </div>
    </footer>
</body>

</html