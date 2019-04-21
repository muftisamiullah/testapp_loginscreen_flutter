class ValidationMixin{

  String validateEmail(String value){
	Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
	if (!regex.hasMatch(value)){
        return 'Enter valid email';
    }
		return null; //only bcz otherwsie the return type stirng will show a waring
  }
  String validatePassword(String value){
	if (value.length <4){
		return 'Pass must contain atleast 4 chars';
	}
		return null; //only bcz otherwsie the return type stirng will show a waring
  } 
}