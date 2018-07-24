pragma solidity^0.4.19;

contract project {
    
    struct studentdata {
        string studentname;
        string studentrollnum;
        string studentbranch;
        string email;
        uint collegefee;
        uint universityfee;
        uint busfee;
        uint totalfee;
        uint PayFee;
    }
    mapping (address => studentdata)datas;
    address[] public dataAccts;
    
    function Insertdetails(address _address,string _stun,string _sroll,string _sbra,string _semail,uint cfee,uint ufee,uint bfee) {
        var data = datas[_address];
        
        data.studentname= _stun;
        data.studentrollnum= _sroll;
        data.studentbranch= _sbra;
        data.email= _semail;
        data.collegefee= cfee;
        data.universityfee= ufee;
        data.busfee= bfee;
        dataAccts.push(_address) -1;
    }
    function getdatas() view public returns(address[]) {
        return dataAccts;
    }
    
    function Getdata(address _address) view public returns (string,string,uint,uint,uint,uint) {
       return (datas[_address].studentname,datas[_address].studentbranch,datas[_address].collegefee,datas[_address].universityfee,datas[_address].busfee,datas[_address].collegefee+datas[_address].universityfee+datas[_address].busfee);
    }
    function PayFee(address _address,uint payfee) {
        var data = datas[_address];
        data.PayFee = payfee;
    }
    function GetFeeDetails(address _address) view public returns(string,uint,uint){
        return (datas[_address].studentname,datas[_address].PayFee,datas[_address].collegefee+datas[_address].universityfee+datas[_address].busfee-datas[_address].PayFee);        
    }
}