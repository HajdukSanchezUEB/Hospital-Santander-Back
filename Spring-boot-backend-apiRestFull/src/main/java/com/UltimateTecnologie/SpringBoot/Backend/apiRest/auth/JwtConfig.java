package com.UltimateTecnologie.SpringBoot.Backend.apiRest.auth;

public class JwtConfig {
  public static final String LLAVE_SECRETA = "alguna.clave.secreta.12345678";
  
  public static final String LLAVE_PRIVADA = "-----BEGIN RSA PRIVATE KEY-----\n"
  		+ "MIIEpgIBAAKCAQEA2T5Q8FsZsVjgSLqqQI2UzqVqXF0PNFWZSOh+TeoUapUn6yh0\n"
  		+ "bdmhDTlJI0bQzBtrGe281g3efvbpB3H2HosoJz6nlCGeg4aXdRbwFy/EG/RucdFA\n"
  		+ "3bnAP/iqjjuATseTom2fwleftjWiJ18RuulmrbltMfSbREcGfy8VMPVpZ4O5fYNl\n"
  		+ "L+8vygenxK0Akpqgdbghnjoc2PIsKIi+WaG1tsScPuXNz3ohztW1J7HujAIQJlNm\n"
  		+ "qJfyRKufk4xXgfrZqcyTMduI9OEPpSEdKANkCG3bvjy9wnQ3pfui13xnCKn4yAQh\n"
  		+ "vI5gMxWdLOAcwoxWnWnYSjph3mQmJiZySweUPQIDAQABAoIBAQCR3LB1oYVPuU/m\n"
  		+ "JUcYzrciRJh0aZtC1VJ1TH05jTimE33Y+7Go7B2hhlwgDnU1BhfUMfa/dlJ0xw3R\n"
  		+ "jOfmvCJ6ryvPXv9SajUZTgxoVQ8EggsB6rD17rkxeqHxm+vbeU8cGSTSVQkMS1iT\n"
  		+ "vNZnvDzP2heCGi2CG3o2PQOqeqyJ7f/TvLtthn0fDjvqRVOqaR42/D+x/Qg7XrON\n"
  		+ "KYzhqYvn7C5tVm8tgUhR4M6ro8vQu7zxjOsiOtNVEXcRVqL7bfkfeKx8eth3/Aoi\n"
  		+ "cTis8XKfGP3j2GOhOMojk2s4LGPF0mgVReKmyEt0ltLs4JyAqq+Yy60nqntHXcZg\n"
  		+ "Yik/zv7BAoGBAPWnQQ0G4D/GRyDpNaWSbV6NKOonmD1Zdrj9Hwuq/O3DVlYDz/Fc\n"
  		+ "nrCSScMJUeo1tmtUZqTRLjoNSbMscrMqDJ78FPUXJL+JCRqw/ORgLDoLgLKAK7+L\n"
  		+ "FsJhemgbkZ/GdGfoD1cRVp5AmUa75ab1DVxDA3ik+Cq2JdpmN8RZQ20xAoGBAOJk\n"
  		+ "u8QzcwvWhEcpRxdsPk/CjhKJWwRW9LdcUomAr76I9X694zDn4pTu+jZ/kHQDIIS6\n"
  		+ "OVaqVMiv5iwsMOTPWj6sPZ/spxW78Jyng2xgqstXUdCOnKtiiVJzrBKiaglyQ1rI\n"
  		+ "beUnP1qwIdnElqRoSemSY3/6kqEToXAyfjfPAmTNAoGBANLtz0RxQAJirVaMCL1n\n"
  		+ "srN6P8R3RRiAhhmndo3dPxqlHK/0zAtyPOxeYCmxCf4yKrWUHiKtXqUIHd1UcBR5\n"
  		+ "KaclypT8T1iLQR8DE9LA5ZjdoZ8jwOzScDNt4d4ctfjcPb2um+VmBNsTmskKs9Gd\n"
  		+ "HuC2xfdEp7Z8+pnCJWZaQzQxAoGBAJk316QntdrzKb8HfqepiFpur7x33XOIbkKS\n"
  		+ "ZwHMaCSpiIxocxQsO7rUKd8sYlVBsIZjil7PFGZmNX77wXN5qff0lhhgD4y0D1nW\n"
  		+ "PSniGnVX+XUOr5WGMK3uvyw1Y1JVVKRiNY37C/OSdLZvSAyo0C0V9+UrboU5Re8r\n"
  		+ "HSUkItiZAoGBAI/pzJVlByFuGA9R8/9SPX9RWMemUYiy5O55Ak07uV98MIcmp9fE\n"
  		+ "43U94QFMx+p5wp0Qtjm388qyqZJWSHI6Xe9D6zcRPHcPQBRFLW1GM7aayiN/ovtv\n"
  		+ "VJCnexJfkmoCZEi/r9N+huFcBhoOuYB8+Phu7lKhvP38z5UklMgOFZDu\n"
  		+ "-----END RSA PRIVATE KEY-----";
  
  public static final String LLAVE_PUBLICA = "-----BEGIN PUBLIC KEY-----\n"
  		+ "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2T5Q8FsZsVjgSLqqQI2U\n"
  		+ "zqVqXF0PNFWZSOh+TeoUapUn6yh0bdmhDTlJI0bQzBtrGe281g3efvbpB3H2Hoso\n"
  		+ "Jz6nlCGeg4aXdRbwFy/EG/RucdFA3bnAP/iqjjuATseTom2fwleftjWiJ18Ruulm\n"
  		+ "rbltMfSbREcGfy8VMPVpZ4O5fYNlL+8vygenxK0Akpqgdbghnjoc2PIsKIi+WaG1\n"
  		+ "tsScPuXNz3ohztW1J7HujAIQJlNmqJfyRKufk4xXgfrZqcyTMduI9OEPpSEdKANk\n"
  		+ "CG3bvjy9wnQ3pfui13xnCKn4yAQhvI5gMxWdLOAcwoxWnWnYSjph3mQmJiZySweU\n"
  		+ "PQIDAQAB\n"
  		+ "-----END PUBLIC KEY-----";
}
