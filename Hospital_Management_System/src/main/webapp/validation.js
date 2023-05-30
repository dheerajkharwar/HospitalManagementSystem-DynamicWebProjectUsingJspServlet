
function specialistInfoValidate(){
    
    const doc_id = document.getElementById("doctor_id");
   
    const pass1 = document.getElementById("userPass1");
    const pass2 = document.getElementById("userPass2");
    const isTrue = "Ab"+pass1.value+"9" === pass2.value;
    
    if (!doc_id.value.match(/[0-9]{1,20}$/)) {
        alert("Doctor ID should be an integer of length less than 21");
        doc_id.focus();
        return false;
    }
    if (!isTrue) {
        alert("Incorrect Password!");
        pass1.focus();
        return false;
    }
    
}

function passwordValidation() {
    const pass = document.getElementById("pass");
    const cnf_pass = document.getElementById("cnf_pass");

// checking password
    if (!pass.value.match(/^.{5,15}$/)) {
        alert("Password length must be between 5-15 characters!");
        pass.focus();
        return false;
    }
    const isTrue = pass.value === cnf_pass.value;
    if (!isTrue) {
        alert("Password mismatch!");
        cnf_pass.focus();
        return false;
    }
}

function loginValidation() {
    const id = document.getElementById("ID");
//	const pw = document.getElementById("password");

    if (!id.value.match(/[0-9]{1,20}$/)) {
        alert("User ID should be a positive integer of length less than 21");
        id.focus();
        return false;
    }

//        if (!pw.value.match(/^(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[A-Z])(?=.*[a-z])[a-zA-Z0-9!@#$%^&*]{6,16}$/)) {
//            alert("Password must contain at least one number, one special character, one upper case letter and one lower case letter. And it should be minimum 6 and maximum 16 characters long!  ");
//            pw.focus();
//            return false;
//        }
}

function prescriptionFormValidation() {

    const pat_id = document.getElementById("pat_id");
    if (!pat_id.value.match(/[0-9]{1,20}$/)) {
        alert("Patient ID should be an integer of length less than 21");
        pat_id.focus();
        return false;
    }

    for (let i = 1; i < 6; i++) {
        let med_id = document.getElementById("med_id" + i.toString());
        let med_name = document.getElementById("med_name" + i.toString());

        if (!med_id.value.match(/^\d+$/)) {
            alert("Medicine ID should be an integer!");
            med_id.focus();
            return false;
        }
        if (med_name.value.length < 2 || med_name.value.length > 20) {
            alert("Medicine name length should be more than 2 and less than 21");
            med_name.focus();
            return false;
        }
        if (!med_name.value.match(/[a-zA-Z]+$/)) {
            alert("It must be a string");
            med_name.focus();
            return false;
        }
    }
    for (let j = 1; j < 4; j++) {
        let test_id = document.getElementById("test_id" + j.toString());
        let test_name = document.getElementById("test_name" + j.toString());

        if (!test_id.value.match(/^\d+$/)) {
            alert("Test ID should be a positive integer!");
            test_id.focus();
            return false;
        }
        if (test_name.value.length < 2 || test_name.value.length > 20) {
            alert("Test name length should be more than 2 and less than 21");
            test_name.focus();
            return false;
        }
        if (!test_name.value.match(/[a-zA-Z]+$/)) {
            alert("It must be a string");
            test_name.focus();
            return false;
        }
    }

    const comments = document.getElementById("comments");
    const sign = document.getElementById("sign");
    const doc_id = document.getElementById("doc_id");
    const doc_name = document.getElementById("doc_name");

    const pass1 = document.getElementById("userPass1");
    const pass2 = document.getElementById("userPass2");
    const isTrue = "Ab"+pass1.value+"9" === pass2.value;

    if (comments.value === "") {
        alert("Please comment...");
        comments.focus();
        return false;
    }
    if (!sign.value.match(/^[a-zA-Z]+\((0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\d\d\)$/)) {
        alert("please sign in the given formate: abcd(dd/mm/yyyy) or abcd(dd-mm-yyyy) or abcd(dd.mm.yyyy)");
        sign.focus();
        return false;
    }
    if (!doc_id.value.match(/^\d+$/)) {
        alert("Doctor ID should be an integer of length less than 21");
        doc_id.focus();
        return false;
    }
    if (doc_name.value.length < 2 || doc_name.value.length > 20) {
        alert("Doctor name length should be more than 2 and less than 21");
        doc_name.focus();
        return false;
    }
    if (!doc_name.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        doc_name.focus();
        return false;
    }
    if (!isTrue) {
        alert("Incorrect Password!");
        pass1.focus();
        return false;
    }
}

function wardInfoValidation() {
    const ward_name = document.getElementById("ward_name");
    const reg_id = document.getElementById("reg_id");
    const reg_name = document.getElementById("reg_name");
    const sup_id = document.getElementById("sup_id");
    const sup_name = document.getElementById("sup_name");

    if (ward_name.value.length < 2 || ward_name.value.length > 20) {
        alert("Ward name length should be more than 2 and less than 21");
        ward_name.focus();
        return false;
    }
    if (!ward_name.value.match(/[a-zA-Z]+$/)) {
        alert("It must be a string");
        ward_name.focus();
        return false;
    }
    if (!reg_id.value.match(/^\d+$/)) {
        alert("Registrar ID should be an integer!");
        reg_id.focus();
        return false;
    }
    if (reg_name.value.length < 2 || reg_name.value.length > 20) {
        alert("Registrar name length should be more than 2 and less than 21");
        reg_name.focus();
        return false;
    }
    if (!reg_name.value.match(/[a-zA-Z]+$/)) {
        alert("It must be a string");
        reg_name.focus();
        return false;
    }
    if (!sup_id.value.match(/^\d+$/)) {
        alert("Supervisor ID should be an integer!");
        sup_id.focus();
        return false;
    }
    if (sup_name.value.length < 2 || sup_name.value.length > 20) {
        alert("Supervisor name length should be more than 2 and less than 21");
        sup_name.focus();
        return false;
    }
    if (!sup_name.value.match(/[a-zA-Z]+$/)) {
        alert("Supervisor name must be a string");
        sup_name.focus();
        return false;
    }

    for (let i = 1; i < 6; i++) {
        let bed_no = document.getElementById("bed_no" + i.toString());
        let bed_type = document.getElementById("bed_type" + i.toString());
        let rent = document.getElementById("rent" + i.toString());

        if (!bed_no.value.match(/^\d+$/)) {
            alert("Bed No. should be an integer!");
            bed_no.focus();
            return false;
        }
        if (bed_type.value.length < 2 || bed_type.value.length > 20) {
            alert("Bed type name length should be more than 2 and less than 21");
            bed_type.focus();
            return false;
        }
        if (!bed_type.value.match(/[a-zA-Z]+$/)) {
            alert("It must be a string");
            bed_type.focus();
            return false;
        }
        if (!rent.value.match(/^\d*\.*\d*$/)) {
            alert("Rent amount must be a number(integer or decimal)!");
            rent.focus();
            return false;
        }
    }

    const pass1 = document.getElementById("userPass1");
    const pass2 = document.getElementById("userPass2");
    const isTrue = "Ab"+pass1.value+"9" === pass2.value;
    if (!isTrue) {
        alert("Incorrect Password!");
        pass1.focus();
        return false;
    }
}


function investigationInfoValidate() {
    const pat_id = document.getElementById("pat_id");
    const height = document.getElementById("height");
    const weight = document.getElementById("weight");
    const disease_1 = document.getElementById("disease_1");
    const disease_2 = document.getElementById("disease_2");
    const disease_3 = document.getElementById("disease_3");
    const disease_4 = document.getElementById("disease_4");
    const disease_5 = document.getElementById("disease_5");
    const disease_6 = document.getElementById("disease_6");
    const upper_bp = document.getElementById("upper_bp");
    const lower_bp = document.getElementById("lower_bp");
    const breakf_1 = document.getElementById("breakf_1");
    const breakf_2 = document.getElementById("breakf_2");
    const breakf_3 = document.getElementById("breakf_3");
    const lunch_1 = document.getElementById("lunch_1");
    const lunch_2 = document.getElementById("lunch_2");
    const lunch_3 = document.getElementById("lunch_3");
    const dinner_1 = document.getElementById("dinner_1");
    const dinner_2 = document.getElementById("dinner_2");
    const dinner_3 = document.getElementById("dinner_3");
    const disease = document.getElementById("disease");
    const sign = document.getElementById("sign");
    const doc_id = document.getElementById("doc_id");
    const doc_name = document.getElementById("doc_name");

    const pass1 = document.getElementById("userPass1");
    const pass2 = document.getElementById("userPass2");
    const isTrue = "Ab"+pass1.value+"9" === pass2.value;

    if (!pat_id.value.match(/[0-9]{1,20}$/)) {
        alert("Patient ID should be an integer of length less than 21");
        pat_id.focus();
        return false;
    }
    if (!height.value.match(/^\d+$/)) {
        alert("Please enter an integer value!");
        height.focus();
        return false;
    }
    if (!weight.value.match(/^\d+$/)) {
        alert("Please enter an integer value!");
        weight.focus();
        return false;
    }
    if (disease_1.value.length < 2 || disease_1.value.length > 20) {
        alert("Disease name length should be more than 2 and less than 21");
        disease_1.focus();
        return false;
    }
    if (!disease_1.value.match(/[a-zA-Z]+$/)) {
        alert("It must be a string");
        disease_1.focus();
        return false;
    }
    if (disease_2.value.length < 2 || disease_2.value.length > 20) {
        alert("Disease name length should be more than 2 and less than 21");
        disease_2.focus();
        return false;
    }
    if (!disease_2.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        disease_2.focus();
        return false;
    }
    if (disease_3.value.length < 2 || disease_3.value.length > 20) {
        alert("Disease name length should be more than 2 and less than 21");
        disease_3.focus();
        return false;
    }
    if (!disease_3.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        disease_3.focus();
        return false;
    }
    if (disease_4.value.length < 2 || disease_4.value.length > 20) {
        alert("Disease name length should be more than 2 and less than 21");
        disease_4.focus();
        return false;
    }
    if (!disease_4.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        disease_4.focus();
        return false;
    }
    if (disease_5.value.length < 2 || disease_5.value.length > 20) {
        alert("Disease name length should be more than 2 and less than 21");
        disease_5.focus();
        return false;
    }
    if (!disease_5.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        disease_5.focus();
        return false;
    }
    if (disease_6.value.length < 2 || disease_6.value.length > 20) {
        alert("Disease name length should be more than 2 and less than 21");
        disease_6.focus();
        return false;
    }
    if (!disease_6.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        disease_6.focus();
        return false;
    }
    if (breakf_1.value.length < 2 || breakf_1.value.length > 20) {
        alert("Breakfast name length should be more than 2 and less than 21");
        breakf_1.focus();
        return false;
    }
    if (!breakf_1.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        breakf_1.focus();
        return false;
    }
    if (breakf_2.value.length < 2 || breakf_2.value.length > 20) {
        alert("Breakfast name length should be more than 2 and less than 21");
        breakf_2.focus();
        return false;
    }
    if (!breakf_2.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        breakf_2.focus();
        return false;
    }
    if (breakf_3.value.length < 2 || breakf_3.value.length > 20) {
        alert("Breakfast name length should be more than 2 and less than 21");
        breakf_3.focus();
        return false;
    }
    if (!breakf_3.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        breakf_3.focus();
        return false;
    }
    if (lunch_1.value.length < 2 || lunch_1.value.length > 20) {
        alert("Lunch name length should be more than 2 and less than 21");
        lunch_1.focus();
        return false;
    }
    if (!lunch_1.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        lunch_1.focus();
        return false;
    }
    if (lunch_2.value.length < 2 || lunch_2.value.length > 20) {
        alert("Lunch name length should be more than 2 and less than 21");
        lunch_2.focus();
        return false;
    }
    if (!lunch_2.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        lunch_2.focus();
        return false;
    }
    if (lunch_3.value.length < 2 || lunch_3.value.length > 20) {
        alert("Lunch name length should be more than 2 and less than 21");
        lunch_3.focus();
        return false;
    }
    if (!lunch_3.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        lunch_3.focus();
        return false;
    }
    if (dinner_1.value.length < 2 || dinner_1.value.length > 20) {
        alert("Dinner name length should be more than 2 and less than 21");
        dinner_1.focus();
        return false;
    }
    if (!dinner_1.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        dinner_1.focus();
        return false;
    }
    if (dinner_2.value.length < 2 || dinner_2.value.length > 20) {
        alert("Dinner name length should be more than 2 and less than 21");
        dinner_2.focus();
        return false;
    }
    if (!dinner_2.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        dinner_2.focus();
        return false;
    }
    if (dinner_3.value.length < 2 || dinner_3.value.length > 20) {
        alert("Dinner name length should be more than 2 and less than 21");
        dinner_3.focus();
        return false;
    }
    if (!dinner_3.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        dinner_3.focus();
        return false;
    }
    if (disease.value.length < 2 || disease.value.length > 20) {
        alert("disease name length should be more than 2 and less than 21");
        disease.focus();
        return false;
    }
    if (!disease.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        disease.focus();
        return false;
    }

    if (!sign.value.match(/^[a-zA-Z]+\((0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\d\d\)$/)) {
        alert("please sign in the given formate: abcd(dd/mm/yyyy) or abcd(dd-mm-yyyy) or abcd(dd.mm.yyyy)");
        sign.focus();
        return false;
    }
    if (!doc_id.value.match(/[0-9]{1,20}$/)) {
        alert("Doctor ID should be an integer of length less than 21");
        doc_id.focus();
        return false;
    }
    if (doc_name.value.length < 2 || doc_name.value.length > 20) {
        alert("Doctor name length should be more than 2 and less than 21");
        doc_name.focus();
        return false;
    }
    if (!doc_name.value.match(/[a-zA-Z]+$/)) {
        alert("It must should be a string");
        doc_name.focus();
        return false;
    }
    if (!isTrue) {
        alert("Incorrect Password!");
        pass1.focus();
        return false;
    }

}

function patientInfoValidate() {
    const fname = document.getElementById("fname");
    const mname = document.getElementById("mname");
    const lname = document.getElementById("lname");
    const age = document.getElementById("age");
    const phone_number = document.getElementById("phone_number");
    const email_address = document.getElementById("email_address");
    const street_number = document.getElementById("street_number");
    const street_name = document.getElementById("street_name");
    const area = document.getElementById("area");
    const thana = document.getElementById("thana");
    const postal_number = document.getElementById("postal_number");
    const street_number1 = document.getElementById("street_number1");
    const street_name1 = document.getElementById("street_name1");
    const area1 = document.getElementById("area1");
    const thana1 = document.getElementById("thana1");
    const postal_number1 = document.getElementById("postal_number1");
    const ward_no = document.getElementById("ward_no");
    const disease = document.getElementById("disease");
    const comments = document.getElementById("comments");
    const amount = document.getElementById("amount");

    const pass1 = document.getElementById("userPass1");
    const pass2 = document.getElementById("userPass2");
    const isTrue = "Ab"+pass1.value+"9" === pass2.value;

    if (fname.value.length < 2 || fname.value.length > 20) {
        alert("Name length should be more than 2 and less than 21");
        fname.focus();
        return false;
    }
    if (!fname.value.match(/[a-zA-Z]+$/)) {
        alert("Invalid name! It should be a string");
        fname.focus();
        return false;
    }
    if (mname.value.length < 2 || mname.value.length > 20) {
        alert("Name length should be more than 2 and less than 21");
        mname.focus();
        return false;
    }
    if (!mname.value.match(/[a-zA-Z]+$/)) {
        alert("Invalid name! It should be a string");
        mname.focus();
        return false;
    }
    if (lname.value.length < 2 || lname.value.length > 20) {
        alert("Name length should be more than 2 and less than 21");
        lname.focus();
        return false;
    }
    if (!lname.value.match(/[a-zA-Z]+$/)) {
        alert("Invalid name! It should be a string");
        lname.focus();
        return false;
    }
    if (!age.value.match(/^\d+$/)) {
        alert("age must be an integer!");
        age.focus();
        return false;
    }
//     checking phone number
    if (!phone_number.value.match(/^[1-9][0-9]{9}$/)) {
        alert("Phone number must be 10 characters long number and first digit can't be 0!");
        phone_number.focus();
        return false;
    }
    // checking email
    if (!email_address.value.match(/^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$/)) {
        alert("Please enter a valid email!");
        email_address.focus();
        return false;
    }
    if (!street_number.value.match(/^\d+$/)) {
        alert("Street number must be an integer!");
        street_number.focus();
        return false;
    }
    if (street_name.value.length < 2 || street_name.value.length > 20) {
        alert("Street Name length should be more than 2 and less than 21");
        street_name.focus();
        return false;
    }
    if (!street_name.value.match(/[a-zA-Z]+$/)) {
        alert("Street name should be a string");
        street_name.focus();
        return false;
    }
    if (area.value.length < 2 || area.value.length > 20) {
        alert("Area Name length should be more than 2 and less than 21");
        area.focus();
        return false;
    }
    if (!area.value.match(/[a-zA-Z]+$/)) {
        alert("Area name should be a string");
        area.focus();
        return false;
    }
    if (thana.value.length < 2 || thana.value.length > 20) {
        alert("Thana Name length should be more than 2 and less than 21");
        thana.focus();
        return false;
    }
    if (!thana.value.match(/[a-zA-Z]+$/)) {
        alert("Thana name should be a string");
        thana.focus();
        return false;
    }
    if (!postal_number.value.match(/^\d{6}$/)) {
        alert("Postal number must be a 6 degit number!");
        postal_number.focus();
        return false;
    }
    if (!street_number1.value.match(/^\d+$/)) {
        alert("Street number must be an integer!");
        street_number1.focus();
        return false;
    }
    if (street_name1.value.length < 2 || street_name1.value.length > 20) {
        alert("Street Name length should be more than 2 and less than 21");
        street_name1.focus();
        return false;
    }
    if (!street_name1.value.match(/[a-zA-Z]+$/)) {
        alert("Street name should be a string");
        street_name1.focus();
        return false;
    }
    if (area1.value.length < 2 || area1.value.length > 20) {
        alert("Area Name length should be more than 2 and less than 21");
        area1.focus();
        return false;
    }
    if (!area1.value.match(/[a-zA-Z]+$/)) {
        alert("Area name should be a string");
        area1.focus();
        return false;
    }
    if (thana1.value.length < 2 || thana1.value.length > 20) {
        alert("Thana Name length should be more than 2 and less than 21");
        thana1.focus();
        return false;
    }
    if (!thana1.value.match(/[a-zA-Z]+$/)) {
        alert("Thana name should be a string");
        thana1.focus();
        return false;
    }
    if (!postal_number1.value.match(/^\d{6}$/)) {
        alert("Postal number must be a 6 degit number!");
        postal_number.focus();
        return false;
    }
    if (!ward_no.value.match(/^\d+$/)) {
        alert("Ward number must be an integer!");
        ward_no.focus();
        return false;
    }
    if (disease.value.length < 2 || disease.value.length > 20) {
        alert("Disease Name length should be more than 2 and less than 21");
        disease.focus();
        return false;
    }
    if (!disease.value.match(/[a-zA-Z]+$/)) {
        alert("Disease name should be a string");
        disease.focus();
        return false;
    }

    if (comments.value === "") {
        alert("Please comment...");
        comments.focus();
        return false;
    }
    if (!amount.value.match(/^\d*\.*\d*$/)) {
        alert("Amount must be a number(integer or decimal)!");
        amount.focus();
        return false;
    }
    if (!isTrue) {
        alert("Incorrect Password!");
        pass1.focus();
        return false;
    }
}


function doctorNurseInfoValidation() {
    const fname = document.getElementById("fname");
    const mname = document.getElementById("mname");
    const lname = document.getElementById("lname");

    const inst_name1 = document.getElementById("inst_name1");
    const year1 = document.getElementById("year1");
    const div_cgpa1 = document.getElementById("div_cgpa1");
    const position1 = document.getElementById("position1");
    const inst_name2 = document.getElementById("inst_name2");
    const year2 = document.getElementById("year2");
    const div_cgpa2 = document.getElementById("div_cgpa2");
    const position2 = document.getElementById("position2");
    const inst_name3 = document.getElementById("inst_name3");
    const year3 = document.getElementById("year3");
    const div_cgpa3 = document.getElementById("div_cgpa3");
    const position3 = document.getElementById("position3");
    const degree4 = document.getElementById("degree4");
    const inst_name4 = document.getElementById("inst_name4");
    const year4 = document.getElementById("year4");
    const div_cgpa4 = document.getElementById("div_cgpa4");
    const position4 = document.getElementById("position4");
    const degree5 = document.getElementById("degree5");
    const inst_name5 = document.getElementById("inst_name5");
    const year5 = document.getElementById("year5");
    const div_cgpa5 = document.getElementById("div_cgpa5");
    const position5 = document.getElementById("position5");

    const job_desg1 = document.getElementById("job_desg1");
    const org_name1 = document.getElementById("org_name1");
    const job_desg2 = document.getElementById("job_desg2");
    const org_name2 = document.getElementById("org_name2");
    const job_desg3 = document.getElementById("job_desg3");
    const org_name3 = document.getElementById("org_name3");
    const job_desg4 = document.getElementById("job_desg4");
    const org_name4 = document.getElementById("org_name4");
    const job_desg5 = document.getElementById("job_desg5");
    const org_name5 = document.getElementById("org_name5");

    const pass1 = document.getElementById("userPass1");
    const pass2 = document.getElementById("userPass2");
    const isTrue = "Ab"+pass1.value+"9" === pass2.value;

    // checking name length
    if (fname.value.length < 2 || fname.value.length > 20) {
        alert("Name length should be more than 2 and less than 21");
        fname.focus();
        return false;
    }
    if (!fname.value.match(/[a-zA-Z]+$/)) {
        alert("Invalid name! It should be a string");
        fname.focus();
        return false;
    }
    if (mname.value.length < 2 || mname.value.length > 20) {
        alert("Name length should be more than 2 and less than 21");
        mname.focus();
        return false;
    }
    if (!mname.value.match(/[a-zA-Z]+$/)) {
        alert("Invalid name! It should be a string");
        mname.focus();
        return false;
    }
    if (lname.value.length < 2 || lname.value.length > 20) {
        alert("Name length should be more than 2 and less than 21");
        lname.focus();
        return false;
    }
    if (!lname.value.match(/[a-zA-Z]+$/)) {
        alert("Invalid name! It should be a string");
        lname.focus();
        return false;
    }
    if (inst_name1.value.length < 2 || inst_name1.value.length > 20) {
        alert("Instutute name length should be more than 2 and less than 21");
        inst_name1.focus();
        return false;
    }
    if (!inst_name1.value.match(/[a-zA-Z]+$/)) {
        alert("Instutute name should be a string");
        inst_name1.focus();
        return false;
    }
    if (!year1.value.match(/^[0-9]{4}$/)) {
        alert("Year must be 4 characters long number!");
        year1.focus();
        return false;
    }
//    if (!div_cgpa1.value.match(/^[1-9]$/) || !div_cgpa1.value.match(/^[0-9][.][0-9]+$/) || !div_cgpa1.value.match(/^[10]$/)) {
//        alert("Division must be 1 characters long number or CGPA must be a number between 0 to 10!");
//        div_cgpa1.focus();
//        return false;
//    }
    if (position1.value.length < 2 || position1.value.length > 20) {
        alert("Position length should be more than 2 and less than 21");
        position1.focus();
        return false;
    }
    if (!position1.value.match(/[a-zA-Z]+$/)) {
        alert("Position name! It should be a string");
        position1.focus();
        return false;
    }
    if (inst_name2.value.length < 2 || inst_name2.value.length > 20) {
        alert("Instutute name length should be more than 2 and less than 21");
        inst_name2.focus();
        return false;
    }
    if (!inst_name2.value.match(/[a-zA-Z]+$/)) {
        alert("Instutute name should be a string");
        inst_name2.focus();
        return false;
    }
    if (!year2.value.match(/^[0-9]{4}$/)) {
        alert("Year must be 4 characters long number!");
        year2.focus();
        return false;
    }
//    if (!div_cgpa2.value.match(/^[1-9]$/) || !div_cgpa2.value.match(/^\d\.\d+$/) || !div_cgpa2.value.match(/^[10]$/)) {
//        alert("Division must be 1 characters long number or CGPA must be a number between 0 to 10!");
//        div_cgpa2.focus();
//        return false;
//    }
    if (position2.value.length < 2 || position2.value.length > 20) {
        alert("Position length should be more than 2 and less than 21");
        position2.focus();
        return false;
    }
    if (!position2.value.match(/[a-zA-Z]+$/)) {
        alert("Position name! It should be a string");
        position2.focus();
        return false;
    }
    if (inst_name3.value.length < 2 || inst_name3.value.length > 20) {
        alert("Instutute name length should be more than 2 and less than 21");
        inst_name3.focus();
        return false;
    }
    if (!inst_name3.value.match(/[a-zA-Z]+$/)) {
        alert("Instutute name should be a string");
        inst_name3.focus();
        return false;
    }
    if (!year3.value.match(/^[0-9]{4}$/)) {
        alert("Year must be 4 characters long number!");
        year3.focus();
        return false;
    }
//    if (!div_cgpa3.value.match(/^[1-9]$/) || !div_cgpa3.value.match(/^\d\.\d+$/) || !div_cgpa3.value.match(/^[10]$/)) {
//        alert("Division must be 1 characters long number or CGPA must be a number between 0 to 10!");
//        div_cgpa3.focus();
//        return false;
//    }
    if (position3.value.length < 2 || position3.value.length > 20) {
        alert("Position length should be more than 2 and less than 21");
        position3.focus();
        return false;
    }
    if (!position3.value.match(/[a-zA-Z]+$/)) {
        alert("Position name! It should be a string");
        position3.focus();
        return false;
    }
    if (degree4.value.length < 2 || degree4.value.length > 20) {
        alert("Degree Name length should be more than 2 and less than 21");
        degree4.focus();
        return false;
    }
    if (!degree4.value.match(/[a-zA-Z]+$/)) {
        alert("Degree name should be a string");
        degree4.focus();
        return false;
    }
    if (inst_name4.value.length < 2 || inst_name4.value.length > 20) {
        alert("Instutute name length should be more than 2 and less than 21");
        inst_name4.focus();
        return false;
    }
    if (!inst_name4.value.match(/[a-zA-Z]+$/)) {
        alert("Instutute name should be a string");
        inst_name4.focus();
        return false;
    }
    if (!year4.value.match(/^[0-9]{4}$/)) {
        alert("Year must be 4 characters long number!");
        year4.focus();
        return false;
    }
//    if (!div_cgpa4.value.match(/^[1-9]$/) || !div_cgpa4.value.match(/^\d\.\d+$/) || !div_cgpa4.value.match(/^[10]$/)) {
//        alert("Division must be 1 characters long number or CGPA must be a number between 0 to 10!");
//        div_cgpa4.focus();
//        return false;
//    }
    if (position4.value.length < 2 || position4.value.length > 20) {
        alert("Position length should be more than 2 and less than 21");
        position4.focus();
        return false;
    }
    if (!position4.value.match(/[a-zA-Z]+$/)) {
        alert("Position name! It should be a string");
        position4.focus();
        return false;
    }
    if (!degree5.value.match(/[a-zA-Z]+$/)) {
        alert("Degree name should be a string");
        degree5.focus();
        return false;
    }
    if (inst_name5.value.length < 2 || inst_name5.value.length > 20) {
        alert("Instutute name length should be more than 2 and less than 21");
        inst_name5.focus();
        return false;
    }
    if (!inst_name5.value.match(/[a-zA-Z]+$/)) {
        alert("Instutute name should be a string");
        inst_name5.focus();
        return false;
    }
    if (!year5.value.match(/^[0-9]{4}$/)) {
        alert("Year must be 4 characters long number!");
        year5.focus();
        return false;
    }
//    if (div_cgpa5!div_cgpa5.value.match(/^[1-9]$/) || !div_cgpa5.value.match(/^\d\.\d+$/) || !div_cgpa5.value.match(/^[10]$/)) {
//        alert("Division must be 1 characters long number or CGPA must be a number between 0 to 10!");
//        div_cgpa5.focus();
//        return false;
//    }
    if (position5.value.length < 2 || position5.value.length > 20) {
        alert("Position length should be more than 2 and less than 21");
        position5.focus();
        return false;
    }
    if (!position5.value.match(/[a-zA-Z]+$/)) {
        alert("Position name! It should be a string");
        position5.focus();
        return false;
    }
    if (job_desg1.value.length < 2 || job_desg1.value.length > 20) {
        alert("Job Designation should be more than 2 and less than 21");
        job_desg1.focus();
        return false;
    }
    if (!job_desg1.value.match(/[a-zA-Z]+$/)) {
        alert("Job Designation should be a string");
        job_desg1.focus();
        return false;
    }
    if (org_name1.value.length < 2 || org_name1.value.length > 20) {
        alert("Organization name should be more than 2 and less than 21");
        org_name1.focus();
        return false;
    }
    if (!org_name1.value.match(/[a-zA-Z]+$/)) {
        alert("Organization name should be a string");
        org_name1.focus();
        return false;
    }
    if (job_desg2.value.length < 2 || job_desg2.value.length > 20) {
        alert("Job Designation should be more than 2 and less than 21");
        job_desg2.focus();
        return false;
    }
    if (!job_desg2.value.match(/[a-zA-Z]+$/)) {
        alert("Job Designation should be a string");
        job_desg2.focus();
        return false;
    }
    if (org_name2.value.length < 2 || org_name2.value.length > 20) {
        alert("Organization name should be more than 2 and less than 21");
        org_name2.focus();
        return false;
    }
    if (!org_name2.value.match(/[a-zA-Z]+$/)) {
        alert("Organization name should be a string");
        org_name2.focus();
        return false;
    }
    if (job_desg3.value.length < 2 || job_desg3.value.length > 20) {
        alert("Job Designation should be more than 2 and less than 21");
        job_desg3.focus();
        return false;
    }
    if (!job_desg3.value.match(/[a-zA-Z]+$/)) {
        alert("Job Designation should be a string");
        job_desg3.focus();
        return false;
    }
    if (org_name3.value.length < 2 || org_name3.value.length > 20) {
        alert("Organization name should be more than 2 and less than 21");
        org_name3.focus();
        return false;
    }
    if (!org_name3.value.match(/[a-zA-Z]+$/)) {
        alert("Organization name should be a string");
        org_name3.focus();
        return false;
    }
    if (job_desg4.value.length < 2 || job_desg4.value.length > 20) {
        alert("Job Designation should be more than 2 and less than 21");
        job_desg4.focus();
        return false;
    }
    if (!job_desg4.value.match(/[a-zA-Z]+$/)) {
        alert("Job Designation should be a string");
        job_desg4.focus();
        return false;
    }
    if (org_name4.value.length < 2 || org_name4.value.length > 20) {
        alert("Organization name should be more than 2 and less than 21");
        org_name4.focus();
        return false;
    }
    if (!org_name4.value.match(/[a-zA-Z]+$/)) {
        alert("Organization name should be a string");
        org_name4.focus();
        return false;
    }
    if (job_desg4.value.length < 2 || job_desg4.value.length > 20) {
        alert("Job Designation should be more than 2 and less than 21");
        job_desg4.focus();
        return false;
    }
    if (!job_desg5.value.match(/[a-zA-Z]+$/)) {
        alert("Job Designation should be a string");
        job_desg5.focus();
        return false;
    }
    if (org_name5.value.length < 2 || org_name5.value.length > 20) {
        alert("Organization name should be more than 2 and less than 21");
        org_name5.focus();
        return false;
    }
    if (!org_name5.value.match(/[a-zA-Z]+$/)) {
        alert("Organization name should be a string");
        org_name5.focus();
        return false;
    }

    if (!isTrue) {
        alert("Incorrect Password!");
        pass1.focus();
        return false;
    }
}


function medicineInfoValidate() {
    const supplier_id = document.getElementById("supplier_id");
    const supplier_name = document.getElementById("supplier_name");
    const med_id1 = document.getElementById("med_id1");
    const med_name1 = document.getElementById("med_name1");
    const price1 = document.getElementById("price1");
    const qty1 = document.getElementById("qty1");
    
    const pass1 = document.getElementById("userPass1");
    const pass2 = document.getElementById("userPass2");
    const isTrue = "Ab"+pass1.value+"9" === pass2.value;

    // checking supplier id
    if (!supplier_id.value.match(/[0-9]{1,20}$/)) {
        alert("supplier_id should be an integer of length less than 21");
        supplier_id.focus();
        return false;
    }
    // checking name length
    if (supplier_name.value.length < 2 || supplier_name.value.length > 20) {
        alert("Name length should be more than 2 and less than 21");
        supplier_name.focus();
        return false;
    }
    if (!supplier_name.value.match(/[a-zA-Z]+$/)) {
        alert("supplier name should be a string");
        supplier_name.focus();
        return false;
    }
    if (!med_id1.value.match(/[0-9]{1,20}$/)) {
        alert("medicine id should be an integer of length less than 21");
        med_id1.focus();
        return false;
    }
    if (med_name1.value.length < 2 || med_name1.value.length > 20) {
        alert("Medicine Name length should be more than 2 and less than 21");
        med_name1.focus();
        return false;
    }
    if (!med_name1.value.match(/[a-zA-Z]+$/)) {
        alert("Medicine name should be a string");
        med_name1.focus();
        return false;
    }
    if (!price1.value.match(/^\d*\.*\d*$/)) {
        alert("Price should be an integer or decimal value!");
        price1.focus();
        return false;
    }
    if (!qty1.value.match(/^\d+$/)) {
        alert("Quantity should be an integer!");
        qty1.focus();
        return false;
    }
    if (!isTrue) {
        alert("Incorrect Password!");
        pass1.focus();
        return false;
    }
}

//// function for form varification
//function formValidation() {
//
//    // checking name length
//    if (name.value.length < 2 || name.value.length > 20) {
//        alert("Name length should be more than 2 and less than 21");
//        name.focus();
//        return false;
//    }
//    // checking email
//    if (email.value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {
//        alert("Please enter a valid email!");
//        email.focus();
//        return false;
//    }
//    // checking password
//    if (!password.value.match(/^.{5,15}$/)) {
//        alert("Password length must be between 5-15 characters!");
//        password.focus();
//        return false;
//    }
//    // checking phone number
//    if (!phoneNumber.value.match(/^[1-9][0-9]{9}$/)) {
//        alert("Phone number must be 10 characters long number and first digit can't be 0!");
//        phoneNumber.focus();
//        return false;
//    }
//    // checking gender
//    if (gender.value === "") {
//        alert("Please select your gender!");
//        return false;
//    }
//    // checking language
//    if (language.value === "") {
//        alert("Please select your language!");
//        return false;
//    }
//    // checking zip code
//    if (!zipcode.value.match(/^[0-9]{6}$/)) {
//        alert("Zip code must be 6 characters long number!");
//        zipcode.focus();
//        return false;
//    }
//    return true;
//}

