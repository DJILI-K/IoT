function decodeUplink(input) {
  var ntu_int = (input.bytes[0] << 8) | input.bytes[1];
  return {
    data: {
      turbidite_ntu: ntu_int / 10.0
    }
  };
}
