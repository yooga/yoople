        function Student(firstname, lastname, email){
        	
        	if(this instanceof Student){
               this.firstname = firstname;
               this.lastname = lastname;
               this.email = email;
               this.courseID = "COIN070B"
               this.assignments = new Array();
               this.exams = new Array();
               this.gradePoints = 0;
               this.letterGrade = "";
        	}else{
        	   return new Student(firstname,lastname,email)
        	}
        }
        
        Student.prototype = {
            constructor : Student,
            
            //add an assignment object to the assignment array
            addAssignment : function(assignment) {
                this.assignments.push(assignment);
            },
            
            //add an exam object to the exam array
            addExam : function(exam) {
                this.exams.push(exam);
            },
           
            //returns final letter grade
            calcGrade : function() {
                var countassignments = this.assignments.length;
                var max = Math.max(this.exams[0].points,this.exams[1].points);
                
                for(var i=0; i<countassignments; i++){
                    this.gradePoints += this.assignments[i].points;
                }
                
                this.gradePoints += max;
                	
                if(this.gradePoints >=180) {
                    this.letterGrade = "A";
                    return "A";
                } else if (this.gradePoints >=160 && this.gradePoints <=179) {
                    this.letterGrade = "B";
                    return "B";
                } else if (this.gradePoints >=140 && this.gradePoints <=159) {
                    this.letterGrade = "C";
                    return "C";
                } else if (this.gradePoints >=120 && this.gradePoints <=139) {
                    this.letterGrade = "D";
                    return "D";
                } else if (this.gradePoints >=0 && this.gradePoints <=119) {
                    this.letterGrade = "W";
                    return "W";
                }
            },
            
            //return a string that output the student info
            toString : function() {
            	
                var output = "";
                
                output += "Student: " + this.firstname + "," + this.lastname + "\n";
                output += "email: " + this.email + "\n";
                output += "Course ID: " + this.courseID + "\n";
                output += "--------------------------------------------" + "\n";
                for(var i=0; i<this.assignments.length; i++){
                    output += this.assignments[i].title + ": " + this.assignments[i].points + "\n";
                }
                
                for(var i=0; i<this.exams.length; i++) {
                    output += this.exams[i].title + ": " + this.exams[i].points + "\n";
                }
                output += "--------------------------------------------" + "\n";
                output += "Total Points: " + this.gradePoints + "\n";
                output += "Final Grade: " + this.letterGrade;
                
                return output;
            },
            	
            toHTML : function () {
            	
                return this.toString().replace(/\n/g,"<br>");
            }
        };

 
        // both assignment and exam are instances of the Task reference type
        function Task(title, points) {
            this.title = title;
            this.points = points;
        }

        Task.prototype = {
            constructor : Task,
            
            toString : function () {
                
        	   var output = "";
        	   output += "Title: " + this.title + "\n";
        	   output += "Points: " + this.points + "\n";
        	   return output;
            }
        };
        
        