.class public Lcom/sprint/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final DISABLE_SCREEN_TIMEOUT_VALUE:I = -0x1

.field private static final DSA_ENABLE_SCREEN_TIMEOUT:Ljava/lang/String; = "dsa_screen_off_enable"

.field private static final DSA_SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "dsa_screen_off_timeout"

.field private static final EVENT_BIND_SERVICE:I = 0x64

.field private static final EVENT_REBOOT_REQUEST:I = 0x66

.field private static final EVENT_SERVICE_CONNECTED:I = 0x65

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mPermissionPass:Z

.field private mRebootRequest:Z

.field private mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

.field private mSignaturePass:Z

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "Platform"

    sput-object v0, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "mContext"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    .line 40
    iput-boolean v2, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    .line 42
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sprint/internal/Platform;->mLock:Ljava/lang/Object;

    .line 43
    iput-boolean v2, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    .line 52
    new-instance v1, Lcom/sprint/internal/Platform$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sprint/internal/Platform$1;-><init>(Lcom/sprint/internal/Platform;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sprint/internal/Platform;->mHandler:Landroid/os/Handler;

    .line 145
    new-instance v1, Lcom/sprint/internal/Platform$2;

    invoke-direct {v1, p0}, Lcom/sprint/internal/Platform$2;-><init>(Lcom/sprint/internal/Platform;)V

    iput-object v1, p0, Lcom/sprint/internal/Platform;->serviceConnection:Landroid/content/ServiceConnection;

    .line 163
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 164
    :cond_0
    iput-object p1, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    .line 165
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Platform - Caller: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {p1}, Lcom/sprint/internal/ConnectionManager;->checkCallerSignature(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    .line 169
    iget-boolean v1, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-nez v1, :cond_1

    .line 170
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signature fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sprint.internal.htcsprintservice.IHtcSprintService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sprint/internal/Platform;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_1
    const-string v1, "com.sprint.internal.permission.PLATFORM"

    invoke-static {v1}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    iput-boolean v4, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/internal/Platform;->mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    .line 179
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "bindService is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "****** require PLATFORM permission!!****** "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sprint/internal/Platform;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sprint/internal/Platform;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sprint/internal/Platform;)Lcom/sprint/internal/htcsprintservice/IHtcSprintService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sprint/internal/Platform;->mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sprint/internal/Platform;Lcom/sprint/internal/htcsprintservice/IHtcSprintService;)Lcom/sprint/internal/htcsprintservice/IHtcSprintService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sprint/internal/Platform;->mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sprint/internal/Platform;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sprint/internal/Platform;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getCdmaPrlVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 289
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 311
    .local v0, prl_prop:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 291
    .end local v0           #prl_prop:Ljava/lang/String;
    :cond_0
    const-string v1, "com.sprint.internal.permission.PLATFORM"

    invoke-static {v1}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    const-string v1, "ro.cdma.prl"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .restart local v0       #prl_prop:Ljava/lang/String;
    goto :goto_0

    .line 294
    .end local v0           #prl_prop:Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "****** require PLATFORM permission!!****** "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v0, ""

    goto :goto_0
.end method

.method public static htcCheckCompatibility([Landroid/content/pm/Signature;)Z
    .locals 9
    .parameter "ps"

    .prologue
    const/4 v6, 0x1

    .line 77
    const-string v7, "CHECK"

    const-string v8, "check sig"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v4, "30820310308201f8a003020102021076c3b7bb6661ab632dc762ef1951f660300d06092a864886f70d01010505003036310b3009060355040613025553310f300d060355040a1306537072696e74311630140603550403130d537072696e7420417070204341301e170d3034303133303030303030305a170d3134303132393233353935395a3071310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310c300a060355040b1303505247311e301c06035504031315537072696e7420566973696f6e20526f6f7420434130819f300d06092a864886f70d010101050003818d0030818902818100f445b429c160c91022a93c1cf3a8e3ec2221251fc478b849252332e90ea484e1356cd327f7c6d3ad317495db01ad805f30de4cdb7ebfa01bdbf9ba4a168a433f5f4032ddf415d17bba0303063367667ec82388320e26406230be071b04c7bf902b74d0d28d318499418a207bb913c8efb2bf251c7f4b6acf152b3fbfebb822150203010001a363306130090603551d130402300030130603551d25040c300a06082b06010505070303300b0603551d0f040403020780301106096086480186f8420101040403020410301f0603551d23041830168014cb7a191aff9b7e74c5e75393c09470c7de0debe6300d06092a864886f70d01010505000382010100102d6d198d6b38a822571ad1ddb29c2e971308f8e81183933d9a1e9b44d3564006d66fb8477350cec63e1393645c6d488f41fc17f4f1849c4e549ba2a4297cc68b3b7af4d799ac9e5b86f4bdfb4e46f13e1eaa1779577c7f0e3609ff972a66866b19b3107ac022c69b9b9be13c7cec56e02c1fce16fdb10377c2db7d62ae0e11084186649ecd55bdba943f34dfb0d11255896bdc93bc867617b97b63022b7a9d745b5fec1ff7c97a5811807ab850984a3a8c6b4c8e7330de1401262495e1e492e65390d67f102ee91bc1b0c2300f4a0fd4d149aadfda1d285b8435bd78ebc79136e0fce06fa9c1752162cd017016fedeecd8484bcce0b34dc26bf4acf64c26af"

    .line 81
    .local v4, sprintKey:Ljava/lang/String;
    const-string v3, "3082048130820369a003020102020900e7331f29e9d30143300d06092a864886f70d0101050500308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d301e170d3039303330313133343431355a170d3336303731373133343431355a308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100a278c94d68c907bf1ea198d3180b15c98cda4eef58ac8c035a885435673cd07621544d39b7b881a97bfe138faf10d23f5ea81c6651fd40abde14e8023cf7eb5f7830896e30563affe177ce7b0942d451b14da2ed3f48f8659755aacfa551eda79ce95a8b9cf94ede0501651995ef9d7344b4725137ae8ecd090399a6b22664e0c1fc3699fa55f62d5b290560d8bbf33cb804a7803ed49322a5117ef3c430fa66089218832852a8ba96a3554234515fc800545f1d160274a737b0af0eaf0576a40d378c7833e07f0624cbd6cc82ced8ff78b95670510560284492766381aed1f333f8ffea0bdde7cf37f0340cc45fa7ffda6f7d4d0129b60789db1671f389d0ab020103a381ef3081ec301d0603551d0e04160414acd68584abeffb3373e2f196757f34f36301bc783081bc0603551d230481b43081b18014acd68584abeffb3373e2f196757f34f36301bc78a1818da4818a308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d820900e7331f29e9d30143300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010035bb7e2967477e72b7901b8da80f3cf9a4695769dbaaa6eed21662ad05d8587f06f6d5c78ef517ef4a928ebaa7105962403397def53c496fd3d4f54b0639d1fe5b6d37bb8fb5fe527d5c01215a25509ea987889fa3d7b6cc1117f37ef71769a5da2a8f5554365b805929daaeec6324c621215d26b0116ce56a22b2ab192c012741571d9e753f47448b9f12370eb59aa894153ea009d5c34ffd9946f62adb423caa28ac48e82078af2393dffe378a5cca802aa76595d89a666f1d0ef42bb22b7c974cfd0dd64c52beeb331b733ffada27c2c7020ce63c0a6f859603262f5c08f70c0e7fbcf5418b13d3575220c8f2f4cc3ff8a151a6e638c3084ca3aacf3b7729"

    .line 84
    .local v3, releaseKey:Ljava/lang/String;
    const-string v0, "3082048130820369a003020102020900c68e97bdcb5c96b9300d06092a864886f70d0101050500308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d301e170d3039303330313133343433315a170d3336303731373133343433315a308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bb5a9285c16871159ce5a18007c626f34232787cfe647bc90fdd56965a6dab9256d4eadd1a0d321c1e5977df9d21fcda871e8ee811e845dcfb8478fa55bc61e1f72b88ee38ab16a63ed7361a432bc72fb8b4d544a5416960a50a244abfc5fc07bc987c3a7c9e196845aa09f38c6f28e8bd74faeaf21892e81bbe1eac717901ed9241f5d07e2c126b7968bec4ab490da9fd83ac752d0bafdbc6fd45bda6b9ada4fed07fa4b964afd3d27bfa57f902b878ac1c5b348ad60dcec522b69fbd436c9764d76d4b2b59509afdb342dc429a550cbf38c80f21b87abab57e22ed5ea79b6ca02f7b0127e2f1f5e3e615e020c7ab8a2b336342bc78388193cbeac1accba2fb020103a381ef3081ec301d0603551d0e04160414656d23a32b79700a81c079331af9a0d3ae9377093081bc0603551d230481b43081b18014656d23a32b79700a81c079331af9a0d3ae937709a1818da4818a308187310b30090603550406130254573110300e0603550408130754616f7975616e3110300e0603550407130754616f7975616e3110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964311e301c06092a864886f70d010901160f616e64726f6964406874632e636f6d820900c68e97bdcb5c96b9300c0603551d13040530030101ff300d06092a864886f70d010105050003820101005051a8f4d9e73a632c204e0a9b9dc0ab86f57b5a29c18c7b888d09df985241ca77ff2cef84de2fac5cb4d03de2d506dd8c55647de5d95345e2529a981c700b45038cc2fab68fe364cd040f43f6924aa355553d295cabb0378abc2d6fa8f8d0ef72dd02a3f2b047d26296fa7b4cd809c5255c91457b61cc77e875daaf447c757630ae92fc9ad3dc595881929c02cf4db47e67dcbb60b6877c3489484b6425ab96598be3f3838ff9ea4cb7c80f34d7f7afdd97a6b92e9a9a0ee66e6b7e593feb2d045d9c20de0a59a0e451458d8c058497d003c4289c29042af26d8933236d5ce6700ea34c6fee9775145e1ce99e9e61de9d17a9a13b8f43348672712a9e65e552"

    .line 87
    .local v0, IMreleaseKey:Ljava/lang/String;
    const-string v5, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    .line 91
    .local v5, sprintKey01:Ljava/lang/String;
    const-string v1, "308203863082026ea00302010202044cbf70a0300d06092a864886f70d0101050500308184310b3009060355040613025553310b3009060355040813024341311430120603550407130b4c6f7320416e67656c6573310f300d060355040a1306537072696e7431283026060355040b131f536572766963652044656c69766572792c20507265706169642047726f7570311730150603550403130e4d6f62696c652044657669636573301e170d3130313032303232343334345a170d3338303330373232343334345a308184310b3009060355040613025553310b3009060355040813024341311430120603550407130b4c6f7320416e67656c6573310f300d060355040a1306537072696e7431283026060355040b131f536572766963652044656c69766572792c20507265706169642047726f7570311730150603550403130e4d6f62696c65204465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100c8260ec6c14a48603f722c066342b610eb723217a9feb04675f933d52babc3de9e1b4ea08e101a05acd25e4b00f0d78bd35702429a8690f52a1e7dcbac9bac35014a5ff2834860a47fdddc4a1f4fe9337d61a94315bd0c8d7d8576b9932478343a1722b355bd908378884530bcd1933903ec01eede4f614382ba5fb5a71d18833d2ea19f1670c5083936a18e851b7f8b12286003ada8cc5276d2d477ea2397187cc49354dfa0edba4c780a0c36156d1ace5dc02d873f45f452c934c9a1dcd7111904b9471909a1b437f17ca2cf87d56608e19ba4528c6698ca8eabab9894f45b60a0dccc19d52cd3b8747f9e700802a67bc44814c38cbc6cf3ebb38c8002d4770203010001300d06092a864886f70d010105050003820101002eca26340f71f65d94d931cc341e44c89dcbfdb66841e0cc9b44784e4eaa1a06e52586a6b31ddc546f6c5118fe6f84a850df4f8313a0d1ef4a528367c3a0b7f35a4d6528f6a9fd6d9482e889b5165e2ceec2f0d7248d75d03ce304a1c346ebdd2d5aee842e1d15b79eefcb9ecdf09d7f4373e3a0ad6db16c6671e0372d5d92bbf779700ee3441a48a9e563f40b4314de2306dd0b242fafcfc4e92bfa2aae4dcff49a258f908a6df6e046c2ca58d938ae523b9aaff3d39014cd02b0b88f53bdf249c13cddfd1a13148514f9e95dd3485ee64522db35e8e4142a9cc54ecf08d0aeeb646e08b841b21cdf3957288bb24568420f8ab54e62baaa270f2681df4f8c72"

    .line 95
    .local v1, SPGKey01:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    array-length v7, p0

    if-ge v2, v7, :cond_1

    .line 98
    aget-object v7, p0, v2

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 142
    :goto_1
    return v6

    .line 95
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const/4 v2, 0x0

    :goto_2
    array-length v7, p0

    if-ge v2, v7, :cond_3

    .line 109
    aget-object v7, p0, v2

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 110
    const-string v7, "CHECK"

    const-string v8, " pass."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 106
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 118
    :cond_3
    const/4 v2, 0x0

    :goto_3
    array-length v7, p0

    if-ge v2, v7, :cond_5

    .line 121
    aget-object v7, p0, v2

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 122
    const-string v7, "CHECK"

    const-string v8, "pass"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 118
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 128
    :cond_5
    const/4 v2, 0x0

    :goto_4
    array-length v7, p0

    if-ge v2, v7, :cond_7

    .line 131
    aget-object v7, p0, v2

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 132
    const-string v7, "CHECK"

    const-string v8, "pass . "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 128
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 137
    :cond_7
    const-wide/16 v6, 0x1388

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_5
    const-string v6, "CHECK"

    const-string v7, "fail. "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v6, 0x0

    goto :goto_1

    .line 139
    :catch_0
    move-exception v6

    goto :goto_5
.end method

.method private static isMainThread()Z
    .locals 6

    .prologue
    .line 315
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 316
    .local v2, myLooper:Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 317
    .local v1, mainLooper:Landroid/os/Looper;
    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    .line 318
    .local v0, bIsMainLooper:Z
    :goto_0
    sget-object v3, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bIsMainLooper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return v0

    .line 317
    .end local v0           #bIsMainLooper:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableScreenTimeout()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 194
    sget-boolean v4, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_0

    .line 229
    :goto_0
    return-void

    .line 195
    :cond_0
    sget-object v4, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v5, "disableScreenTimeout"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-boolean v4, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    if-nez v4, :cond_2

    .line 197
    :cond_1
    sget-object v4, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v5, "Signature or Permission failed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_screen_off_enable"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 206
    .local v2, enableTimeout:Z
    iget-object v4, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    const/16 v6, 0x7530

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 211
    .local v0, deviceTimeOut:I
    if-nez v2, :cond_3

    if-eq v0, v7, :cond_4

    .line 213
    :cond_3
    iget-object v4, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_screen_off_timeout"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    sget-object v4, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save device timeout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_4
    iget-object v4, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    iget-object v4, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_screen_off_enable"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 224
    .end local v0           #deviceTimeOut:I
    .end local v2           #enableTimeout:Z
    :catch_0
    move-exception v1

    .line 225
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v5, "could not persist screen timeout setting"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 226
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 227
    .local v3, se:Ljava/lang/SecurityException;
    sget-object v4, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v5, "need Permission"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public enableScreenTimeout()V
    .locals 8

    .prologue
    .line 231
    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_0

    .line 273
    :goto_0
    return-void

    .line 232
    :cond_0
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "enableScreenTimeout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean v5, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    if-nez v5, :cond_2

    .line 234
    :cond_1
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "Signature or Permission failed!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dsa_screen_off_enable"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 242
    .local v2, enableTimeout:Z
    if-eqz v2, :cond_3

    .line 244
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "already enableScreenTimeout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 268
    .end local v2           #enableTimeout:Z
    :catch_0
    move-exception v1

    .line 269
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "could not persist screen timeout setting"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 247
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #enableTimeout:Z
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dsa_screen_off_timeout"

    const/16 v7, 0x7530

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 251
    .local v3, savedTimeout:I
    iget-object v5, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    const/16 v7, 0x7530

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 254
    .local v0, currTimeout:I
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "savedTimeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " currTimeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    if-eq v0, v3, :cond_4

    .line 258
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reset timeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v5, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    :goto_1
    iget-object v5, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dsa_screen_off_enable"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 270
    .end local v0           #currTimeout:I
    .end local v2           #enableTimeout:Z
    .end local v3           #savedTimeout:I
    :catch_1
    move-exception v4

    .line 271
    .local v4, se:Ljava/lang/SecurityException;
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "need Permission"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 262
    .end local v4           #se:Ljava/lang/SecurityException;
    .restart local v0       #currTimeout:I
    .restart local v2       #enableTimeout:Z
    .restart local v3       #savedTimeout:I
    :cond_4
    :try_start_2
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "user already enableScreenTimeout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public reboot()V
    .locals 2

    .prologue
    .line 277
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 278
    :cond_0
    sget-object v0, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v1, "reboot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-boolean v0, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    if-nez v0, :cond_2

    .line 280
    :cond_1
    sget-object v0, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v1, "Signature or Permission failed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    .line 284
    iget-object v0, p0, Lcom/sprint/internal/Platform;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
