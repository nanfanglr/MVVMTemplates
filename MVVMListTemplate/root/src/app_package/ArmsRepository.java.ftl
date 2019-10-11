package ${modelPackageName};

import com.souyute.casher.netservice.NetService;

import javax.inject.Inject;

public class ${pageName}Repository {

    private final NetService netService;

    @Inject
    public  ${pageName}Repository(NetService netService) {
        this.netService = netService;
    }
了
//   示例代码
//    public Single<ResultModel<UserModel>> lginOB(String userKey, String userPsw) {
//        return netService.login(userKey, userPsw);
//    }

}