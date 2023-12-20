// Returns jsos string as formatted JSON object

import { SafeString } from 'handlebars';


const parser = function (data: unknown ) {
console.log(data);
  if (data instanceof SafeString ){
    return JSON.parse(data.toString());
  }
  if (typeof data === 'string'){
    return JSON.parse(data);
  }

  return data;
};
export default parser;
