//Faculty Management
contract FacultyInfo{
    
    struct FacultyData {
        string facultyName;
        string facultyId;
        string email;
        uint salory;
        uint accoutInfo;
    }
    mapping (address => FacultyData)datas;
    address[] public dataAccts;
    
    function enterFacultyData(address _address,string facn,string fId,string femail,uint sal,uint acinfo) public {
        var data = datas[_address];
        
        data.facultyName= facn;
        data.facultyId= fId;
        data.email= femail;
        data.salory= sal;
        data.accoutInfo=acinfo;
        dataAccts.push(_address) -1;
    }
    function getdatas() view public returns(address[]) {
        return dataAccts;
    }
    
    function Getdata(address _address) view public returns (string,string,string,uint,uint) {
       return (datas[_address].facultyName,datas[_address].facultyId,datas[_address].email,datas[_address].salory,datas[_address].accoutInfo);
    }
    }
   