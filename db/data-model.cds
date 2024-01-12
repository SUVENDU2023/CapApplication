
context CapApplication.db {

entity Sales {
  key ID          : Integer;
      region      : String(100);
      country     : String(100);
      org         : String(4);
      amount      : Integer;
      comments    : String(100);
      criticality : Integer;
};

entity Employees {
  key ID          : Integer;
      f_name      : String(100);
      l_name      : String(100);
      j_type      : String(100);
      gender      : String(100);
      age         : String(100);
      city        : String(100);
  };
  // entity Badgebytes {
  // key ID          : Integer;
  //     f_name      : String(100);
  //     l_name      : String(100);
  //     j_type      : String(100);
  //     gender      : String(100);
  //     age         : String(100);
  //     city        : String(100);
  // };


}

@cds.persistence.exists
@cds.persistence.calcview
entity CV_SALES {
  key REGION  : String(100);
      AMOUNT  : Integer;
}

@cds.persistence.exists
@cds.persistence.calcview
entity CV_SESSION_INFO {
  key ITEM     : String(5000);
      VALUE    : String(5000);
}
