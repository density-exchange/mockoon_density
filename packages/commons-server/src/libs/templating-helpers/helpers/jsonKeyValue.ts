// Returns jsos string as formatted JSON object


const finder = function (data: unknown, key: string ) {

if (data && typeof data === 'object') {
    return data[key];
  }
};
export default finder;
