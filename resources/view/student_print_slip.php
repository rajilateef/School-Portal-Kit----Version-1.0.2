<div class='panel panel-primary'>
    <div class='panel-body'>
        <div class='row'>
            <div class='col-xs-2 col-sm-2 col-md-2 text-center'>
                <img class='img-rounded img-responsive' src='<?php echo $school_logo; ?>' alt='logo'/>
            </div>

            <div class='col-xs-8 col-sm-8 col-md-8 text-center'>
                <h3><?php echo $school_name; ?></h3>
                <p class='text-danger'>
                <?php echo $school_address; ?><br/>
                </p>
            </div>

            <div class='col-xs-2 col-sm-2 col-md-2 text-center text-responsive'> 
                <img src='<?php echo $student_passport; ?>' class='img-rounded img-responsive' alt='logo' />
            </div>
        </div>
        <hr />

        <div class='row'>
            <div class='col-xs-4 col-md-4'>
                <legend>Bio-Data</legend>
                <p>Surname: <?php echo $surname; ?></p>
                <p>First Name: <?php echo $lastname; ?></p>
                <p>Other Name: <?php echo $othername; ?></p>
                <p>Sex: <?php echo $student_gender; ?></p>
                <p>State: <?php echo $student_state; ?></p>
                <p>Nationality: <?php echo $student_nationality; ?></p>
                <p>Father Name: <?php echo $father_name; ?></p>
                <p>Mother Name: <?php echo $mother_name; ?></p>
            </div>
            <div class='col-xs-4 col-md-4'>
                <legend>Birthday</legend>
                <p>Age: <?php echo $student_age; ?></p>
                <p>Date: <?php echo $student_dob; ?></p>
                <p>Month: <?php echo $student_mob; ?></p>
                <p>Year: <?php echo $student_yob; ?></p>
            </div>
            <div class='col-xs-4 col-md-4'>
                <legend>Contact</legend>
                <p>Student Phone: <?php echo $student_contact_phone; ?></p>
                <p>Nearest Contact1: <?php echo $nearest_contact1; ?></p>
                <p>Nearest Contact2: <?php echo $nearest_contact2; ?></p>
                <p>Nearest Contact3: <?php echo $nearest_contact3; ?></p>
                <p>Health Conditions: <?php echo $health_conditions; ?></p>
                <p>Home Address: <?php echo $student_address; ?></p>
                <p>Father's Phone: <?php echo $father_phone; ?></p>
                <p>Mother's Phone: <?php echo $mother_phone; ?></p>
                <p>Father Occupation: <?php echo $father_occupation; ?></p>
                <p>Mother Occupation: <?php echo $mother_occupation; ?></p>
            </div>
        </div>
        <br />

        <div class='row'>
            <div class='col-xs-4 col-md-4'>
                <legend>Academics</legend>
                <p>Registration No: <?php echo $student_reg_number; ?></p>
                <p>Password: <?php echo $student_password; ?></p>
                <p>Class: <?php echo $student_class; ?></p>
            </div>
            <div class='col-xs-4 col-md-4'>
                <legend>Sponsor:</legend>
                <p>Name: <?php echo $student_sponsor_name; ?></p>
                <p>Phone: <?php echo $student_sponsor_phone; ?></p>
                <p>Relationship: <?php echo $student_sponsor_relationship; ?></p>
            </div>
            <div class='col-xs-4 col-md-4'>
                <legend>Registered</legend>
                <p>Date: <?php echo $student_reg_day; ?></p>
                <p>Month: <?php echo $student_reg_month; ?></p>
                <p>Year: <?php echo $student_reg_year; ?></p>
            </div>
        </div>
        <br/>
        <hr/>

        <div class='row'>
            <div class='col-xs-12 col-md-12 text-center'>
                <em>
                    <strong>NOTE:</strong> Print this slip and keep it safe, you will require this for effective service of your school portal. 
                    We are always ready to asisst in any way we can. 
                    <br/>
                    <span class='fa fa-phone'></span> 2347036798652,&nbsp;&nbsp;
                    <span class='fa fa-envelope'></span> support@toxaswift.com &nbsp;&nbsp;
                    <button type='button' class='btn btn-primary noprint' onclick='window.print()' value='print a div!'><i class='fa fa-print'></i> Print</button>
                    <a class='noprint btn btn-danger' href='student_dashboard.php'><i class='fa fa-remove'></i> Close Slip</a> 
                </em>
            </div>
        </div>

    </div>
</div>