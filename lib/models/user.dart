class user
{
  late final int id;
  late final String name;
  late final String bankAc;
  late final String Nid;
  late final String email;
  late final String date;
  late final String pass;
  late final String confirmPass;
  late final String mobile;


  user({required this.id, required this.name, required this.bankAc, required this.Nid, required this.email, required this.date, required this.pass, required this.confirmPass, required
  this.mobile});

  Map<String, dynamic> toMap()
  {
    return <String, dynamic>
    {
      "id" : id,
      "name" : name,
      "bankAc" : bankAc,
      "Nid" : Nid,
      "email" : email,
      "date" : date,
      "pass" : pass,
      "confirmPass" : confirmPass,
      "mobile" : mobile,
    };
  }
}