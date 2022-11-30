import React from "react";
import { useState } from "react";
import Button from "./Button";

const New = () => {
  const [valid, setValid] = useState(true)
  const handleUpload = (e) => {

    if (e.target.files[0].size > 10000000) {
      setValid(false)
    } else {
      setValid(true)
    }
  }

  return (
    <div>
      <form class="simple_form new_photograph" id="new_photograph" novalidate="novalidate" enctype="multipart/form-data" action="/photographs" accept-charset="UTF-8" method="post">
        <input type="hidden" name="authenticity_token" value="6NMj3DMqtImG4qoxA4shN_BU5aTB1zF6DuPr_KZ1Y0hzX3HbSUB5u6BOjLucDt6glVNSg1a9GpoH4E7ka7PMGg" autocomplete="off"></input>
        <div class="mb-3 string optional photograph_title">
          <label class="form-label string optional" for="photograph_title">Title (totally optional)</label>
          <input class="form-control string optional" maxlength="30" size="30" type="text" name="photograph[title]" id="photograph_title"></input>
        </div>
        <div class="mb-3 file required photograph_photo">
          <label class="form-label file required" for="photograph_photo">Photo <abbr title="required">*</abbr></label>
          <input class="form-control file required" type="file" name="photograph[photo]" id="photograph_photo" onChange={handleUpload}></input>
        </div>
        <Button valid={valid} />
      </form>
    </div>
  );
};

export default New;
