class ApiUris {
  // base Url
  static const baseUrl = '10.192.5.42:7007';
  //===========================End Points ============================//
  // generate Token
  static const generateToken = '/GenerateToken';
   // user details
  static const userDetails = '/UserDetails';

  //resource
  static const resourceGet = '/GetModules';
  //add resource
  static const addResource ='/AddModules';
  //edit resource
  static const editResource ='/updateModules';
  //delete resource
  static const deleteResource = '/DeleteModules';
  
  //add activity
  static const addActivity = '/PostActivity/resources';
  // get activity
  static const getActivity = 'GetActivity/All';
  // edit activity
  static const editActivity = '/PutActivity';
   // delete activity
  static const deleteActivity = '/DeleteActivity';

//get role
static const getRole = '/GetRoles';
//add role
static const addRole = '/PostRole';
//edit role
static const editRole = '/PutRoles';
//delete role
static const deletaRole = '/DeleteRoles';


}
