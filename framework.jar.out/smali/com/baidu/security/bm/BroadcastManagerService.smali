.class public Lcom/baidu/security/bm/BroadcastManagerService;
.super Lcom/baidu/security/bm/IBroadcastManagerService$Stub;
.source "BroadcastManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;
    }
.end annotation


# static fields
.field private static final ADD_LOCKED_APPS:I = 0x4

.field private static final ADD_SILENT_APPS:I = 0x2

.field private static final CLASS_FIELD_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final CLASS_NAME_BROADCAST_FILTER:Ljava/lang/String; = "com.android.server.am.BroadcastFilter"

.field private static final CLASS_NAME_PACKAGEMANAGERSERVICE:Ljava/lang/String; = "com.android.server.pm.PackageManagerService"

.field private static final CLASS_NAME_PACKAGESETTINGBASE:Ljava/lang/String; = "com.android.server.pm.PackageSettingBase"

.field private static final CLASS_NAME_PM_SETTINGS:Ljava/lang/String; = "com.android.server.pm.Settings"

.field private static final CLASS_NAME_PROCESSRECORD:Ljava/lang/String; = "com.android.server.am.ProcessRecord"

.field private static final CLASS_PACKAGESETTING_FIELD_STOPPED:Ljava/lang/String; = "stopped"

.field private static final CLASS_PMS_FIELD_MPROTECTEDBROADCASTS:Ljava/lang/String; = "mProtectedBroadcasts"

.field private static final CLASS_PMS_FIELD_MSETTINGS:Ljava/lang/String; = "mSettings"

.field private static final CLASS_PM_SETTINGS_FIELD_MPACKAGES:Ljava/lang/String; = "mPackages"

.field private static final CLASS_PR_FIELD_PKGLIST:Ljava/lang/String; = "pkgList"

.field private static final ERROR_BLACK_SILENT_LISTS_ARE_EMPTY:I = -0x2

.field private static final ERROR_SERVICE_DISABLED:I = -0x1

.field private static final ERROR_SERVICE_UNINIT:I = -0x3

.field private static final OK_FOUND_AND_FILTERED:I = 0x1

.field private static final OK_NO_NEED_TO_FILTER:I = 0x0

.field private static final PACKAGEMANAGERSERVICE_NAME:Ljava/lang/String; = "package"

.field private static final REMOVE_LOCKED_APPS:I = 0x5

.field private static final REMOVE_SILENT_APP:I = 0x3

.field private static final SHOW_LOG:Z = false

.field public static final TAG:Ljava/lang/String; = "BroadcastManagerService"

.field private static final UPDATE_AUTO_LAUNCH_BLACKLIST:I = 0x1

.field private static broadcastFilter_packageName:Ljava/lang/reflect/Field;

.field private static volatile enabled:Z

.field private static mService:Lcom/baidu/security/bm/BroadcastManagerService;

.field private static processRecord_pkgList:Ljava/lang/reflect/Field;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mPMSIBinder:Landroid/os/IBinder;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProtectedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrustedSilentApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageManagerService_mProtectedBroadcasts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageManagerService_mSettings:Ljava/lang/Object;

.field private packageSetting_stopped:Ljava/lang/reflect/Field;

.field private pmSettings_mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/baidu/security/bm/BroadcastManagerService;->broadcastFilter_packageName:Ljava/lang/reflect/Field;

    .line 69
    sput-object v0, Lcom/baidu/security/bm/BroadcastManagerService;->processRecord_pkgList:Ljava/lang/reflect/Field;

    .line 79
    sput-object v0, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/security/bm/BroadcastManagerService;->enabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 955
    invoke-direct {p0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;-><init>()V

    .line 50
    iput-object v7, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mProtectedBroadcasts:Ljava/util/HashSet;

    .line 52
    iput-object v7, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mSettings:Ljava/lang/Object;

    .line 57
    iput-object v7, p0, Lcom/baidu/security/bm/BroadcastManagerService;->pmSettings_mPackages:Ljava/util/HashMap;

    .line 62
    iput-object v7, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageSetting_stopped:Ljava/lang/reflect/Field;

    .line 82
    iput-object v7, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mContext:Landroid/content/Context;

    .line 83
    iput-object v7, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPm:Landroid/content/pm/PackageManager;

    .line 88
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "YiBMS"

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 93
    iput-object v7, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPMSIBinder:Landroid/os/IBinder;

    .line 956
    iput-object p1, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mContext:Landroid/content/Context;

    .line 957
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPm:Landroid/content/pm/PackageManager;

    .line 959
    invoke-static {}, Lcom/baidu/security/bm/AutoLaunchController;->loadBlackList()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 960
    const/4 v4, 0x1

    sput-boolean v4, Lcom/baidu/security/bm/BroadcastManagerService;->enabled:Z

    .line 963
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mProtectedApps:Ljava/util/HashSet;

    .line 964
    sget-object v4, Lcom/baidu/security/bm/YiProtectedBroadcasts;->APP_WHITE_LIST:[Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/baidu/security/bm/YiProtectedBroadcasts;->APP_WHITE_LIST:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 966
    sget-object v0, Lcom/baidu/security/bm/YiProtectedBroadcasts;->APP_WHITE_LIST:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 967
    .local v3, pkg:Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 966
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 971
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pkg:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mTrustedSilentApps:Ljava/util/HashSet;

    .line 972
    sget-object v4, Lcom/baidu/security/bm/YiProtectedBroadcasts;->TRUSTED_SILENT_APPS:[Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/baidu/security/bm/YiProtectedBroadcasts;->TRUSTED_SILENT_APPS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_2

    .line 974
    sget-object v0, Lcom/baidu/security/bm/YiProtectedBroadcasts;->TRUSTED_SILENT_APPS:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 975
    .restart local v3       #pkg:Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mTrustedSilentApps:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 974
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 979
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pkg:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/baidu/security/bm/LockedAppsController;->loadLockedAppsList()Z

    .line 981
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 982
    new-instance v4, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;-><init>(Lcom/baidu/security/bm/BroadcastManagerService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    .line 983
    return-void
.end method

.method private buildAutoLaunchAppInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/HashSet;)Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .locals 12
    .parameter "appInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/security/bm/AutoLaunchAppInfo;"
        }
    .end annotation

    .prologue
    .local p2, systemActions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 842
    if-nez p1, :cond_1

    .line 843
    const/4 v1, 0x0

    .line 923
    :cond_0
    :goto_0
    return-object v1

    .line 846
    :cond_1
    const/4 v1, 0x0

    .line 847
    .local v1, autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    const/4 v7, 0x0

    .line 848
    .local v7, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 851
    .local v6, packageName:Ljava/lang/String;
    sget-object v10, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    array-length v9, v10

    .line 852
    .local v9, yiConcernActionsNum:I
    sget-object v10, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    if-eqz v10, :cond_5

    if-lez v9, :cond_5

    .line 853
    sget-object v10, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-direct {p0, v6, v10}, Lcom/baidu/security/bm/BroadcastManagerService;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 854
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 855
    if-nez v1, :cond_2

    .line 856
    new-instance v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .end local v1           #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-direct {v1, v6, v11, v10}, Lcom/baidu/security/bm/AutoLaunchAppInfo;-><init>(Ljava/lang/String;II)V

    .line 858
    .restart local v1       #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_2
    iget v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 863
    :cond_3
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v9, :cond_5

    .line 864
    sget-object v10, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-direct {p0, v6, v10}, Lcom/baidu/security/bm/BroadcastManagerService;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 865
    if-eqz v7, :cond_a

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_a

    .line 866
    if-nez v1, :cond_4

    .line 867
    new-instance v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .end local v1           #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-direct {v1, v6, v11, v10}, Lcom/baidu/security/bm/AutoLaunchAppInfo;-><init>(Ljava/lang/String;II)V

    .line 869
    .restart local v1       #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_4
    iget v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 878
    .end local v2           #i:I
    :cond_5
    const-wide/16 v4, 0x0

    .line 883
    .local v4, now1:J
    if-eqz v1, :cond_6

    iget v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    and-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_9

    :cond_6
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 885
    sget-object v10, Lcom/baidu/security/bm/YiProtectedBroadcasts;->MAIN_CONCERN_ACTINS:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-virtual {p2, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 886
    if-eqz p2, :cond_9

    .line 887
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 888
    .local v0, action:Ljava/lang/String;
    invoke-direct {p0, v6, v0}, Lcom/baidu/security/bm/BroadcastManagerService;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 889
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 890
    if-nez v1, :cond_8

    .line 891
    new-instance v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .end local v1           #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-direct {v1, v6, v11, v10}, Lcom/baidu/security/bm/AutoLaunchAppInfo;-><init>(Ljava/lang/String;II)V

    .line 893
    .restart local v1       #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_8
    iget v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchFlags:I

    .line 907
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_9
    if-eqz v1, :cond_0

    .line 908
    invoke-static {v6}, Lcom/baidu/security/bm/AutoLaunchController;->packageInBlackList(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 909
    iput-boolean v11, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    .line 910
    invoke-static {}, Lcom/baidu/security/bm/AutoLaunchController;->getBlackListForReading()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 911
    .local v8, state:Ljava/lang/Integer;
    if-eqz v8, :cond_0

    .line 912
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    goto/16 :goto_0

    .line 863
    .end local v4           #now1:J
    .end local v8           #state:Ljava/lang/Integer;
    .restart local v2       #i:I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 916
    .end local v2           #i:I
    .restart local v4       #now1:J
    :cond_b
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    goto/16 :goto_0
.end method

.method private dumpHashMap(Ljava/util/HashMap;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 948
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 949
    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 950
    .local v2, item:Ljava/lang/String;
    const-string v3, "BroadcastManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 953
    .end local v2           #item:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static filterBroadcastReceiver(Ljava/util/List;Ljava/util/List;Landroid/content/Intent;Ljava/util/ArrayList;)I
    .locals 6
    .parameter "declaredReceivers"
    .parameter "registeredReceivers"
    .parameter "intent"
    .parameter "runningAppProcesses"

    .prologue
    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, retVal:I
    sget-boolean v5, Lcom/baidu/security/bm/BroadcastManagerService;->enabled:Z

    if-nez v5, :cond_1

    .line 172
    const/4 v3, -0x1

    .line 212
    :cond_0
    :goto_0
    return v3

    .line 174
    :cond_1
    sget-object v5, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    if-nez v5, :cond_2

    .line 175
    const/4 v3, -0x3

    goto :goto_0

    .line 178
    :cond_2
    invoke-static {}, Lcom/baidu/security/bm/AutoLaunchController;->getBlackListForReading()Ljava/util/HashMap;

    move-result-object v0

    .line 179
    .local v0, blackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/baidu/security/bm/SilentAppsController;->getSilentAppsForReading()Ljava/util/HashSet;

    move-result-object v4

    .line 180
    .local v4, silentList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    if-gtz v5, :cond_5

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    if-gtz v5, :cond_5

    .line 181
    :cond_4
    const/4 v3, -0x2

    goto :goto_0

    .line 184
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_0

    .line 185
    const-wide/16 v1, 0x0

    .line 189
    .local v1, now1:J
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {p0, v5, v4, p3}, Lcom/baidu/security/bm/BroadcastManagerService;->findAndFilterDeclaredReceivers(Ljava/util/List;Ljava/util/Set;Ljava/util/HashSet;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 190
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static findAndFilterDeclaredReceivers(Ljava/util/List;Ljava/util/Set;Ljava/util/HashSet;Ljava/util/ArrayList;)Z
    .locals 14
    .parameter "declaredReceivers"
    .parameter
    .parameter
    .parameter "runningAppProcesses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, blackList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, silentList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_2

    .line 537
    :cond_0
    const/4 v9, 0x0

    .line 612
    :cond_1
    return v9

    .line 540
    :cond_2
    const/4 v9, 0x0

    .line 541
    .local v9, retVal:Z
    const/4 v3, 0x0

    .line 542
    .local v3, foundPkgName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 543
    .local v10, ri:Landroid/content/pm/ResolveInfo;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 544
    .local v8, receivers:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 545
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 546
    .local v6, item:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 547
    if-eqz v6, :cond_4

    move-object v10, v6

    .line 548
    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 549
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_a

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_a

    .line 550
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 568
    :cond_4
    :goto_1
    if-eqz v3, :cond_3

    .line 569
    const/4 v2, 0x0

    .line 570
    .local v2, foundAutoLaunch:Z
    const/4 v5, 0x0

    .line 571
    .local v5, it:Ljava/util/Iterator;
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 572
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 573
    const/4 v1, 0x0

    .line 574
    .local v1, blackListItem:Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 575
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #blackListItem:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 576
    .restart local v1       #blackListItem:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 577
    const/4 v2, 0x1

    .line 582
    .end local v1           #blackListItem:Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    .line 583
    .local v4, foundSilent:Z
    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 584
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 585
    const/4 v11, 0x0

    .line 586
    .local v11, silentListItem:Ljava/lang/String;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 587
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #silentListItem:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 588
    .restart local v11       #silentListItem:Ljava/lang/String;
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 589
    const/4 v4, 0x1

    .line 594
    .end local v11           #silentListItem:Ljava/lang/String;
    :cond_8
    if-nez v2, :cond_9

    if-eqz v4, :cond_3

    .line 598
    :cond_9
    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/baidu/security/bm/BroadcastManagerService;->isRunningApp(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 599
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 600
    const/4 v9, 0x1

    goto :goto_0

    .line 555
    .end local v2           #foundAutoLaunch:Z
    .end local v4           #foundSilent:Z
    .end local v5           #it:Ljava/util/Iterator;
    :cond_a
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v12, :cond_b

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_b

    .line 556
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 561
    :cond_b
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 562
    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    goto :goto_1

    .line 603
    .restart local v2       #foundAutoLaunch:Z
    .restart local v4       #foundSilent:Z
    .restart local v5       #it:Ljava/util/Iterator;
    :cond_c
    if-eqz v4, :cond_3

    sget-object v12, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    if-eqz v12, :cond_3

    sget-object v12, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    iget-object v12, v12, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    if-eqz v12, :cond_3

    .line 604
    sget-object v12, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    iget-object v12, v12, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v13, 0x3

    invoke-virtual {v12, v13, v3}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 605
    .local v7, msg:Landroid/os/Message;
    sget-object v12, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    iget-object v12, v12, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v12, v7}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method private static findAndFilterRegisteredReceivers(Ljava/util/List;Ljava/util/Set;Ljava/util/HashSet;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter "registeredReceivers"
    .parameter
    .parameter
    .parameter "runningAppProcesses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, blackList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, silentList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_2

    .line 619
    :cond_0
    const/4 v6, 0x0

    .line 653
    :cond_1
    return v6

    .line 622
    :cond_2
    const/4 v6, 0x0

    .line 623
    .local v6, retVal:Z
    const/4 v2, 0x0

    .line 624
    .local v2, foundPkgName:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 625
    .local v5, receivers:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 626
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 627
    .local v4, item:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 628
    if-eqz v4, :cond_4

    .line 629
    invoke-static {v4}, Lcom/baidu/security/bm/BroadcastManagerService;->getClassBroadcastFilterFieldPkgName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 631
    :cond_4
    if-eqz v2, :cond_3

    .line 632
    const/4 v1, 0x0

    .line 633
    .local v1, found:Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 634
    .local v3, it:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 635
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 636
    .local v0, blacklistItem:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 637
    const/4 v1, 0x1

    .line 641
    .end local v0           #blacklistItem:Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_3

    .line 645
    invoke-static {v2, p3}, Lcom/baidu/security/bm/BroadcastManagerService;->isRunningApp(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 646
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 647
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private static getClassBroadcastFilterFieldPkgName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter "obj"

    .prologue
    .line 709
    if-nez p0, :cond_0

    .line 710
    const/4 v3, 0x0

    .line 733
    :goto_0
    return-object v3

    .line 713
    :cond_0
    const/4 v3, 0x0

    .line 715
    .local v3, pkgName:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/baidu/security/bm/BroadcastManagerService;->broadcastFilter_packageName:Ljava/lang/reflect/Field;

    if-nez v4, :cond_1

    .line 716
    const-string v4, "com.android.server.am.BroadcastFilter"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 717
    .local v1, broadcastFilterClass:Ljava/lang/Class;
    const-string/jumbo v4, "packageName"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lcom/baidu/security/bm/BroadcastManagerService;->broadcastFilter_packageName:Ljava/lang/reflect/Field;

    .line 718
    sget-object v4, Lcom/baidu/security/bm/BroadcastManagerService;->broadcastFilter_packageName:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 720
    .end local v1           #broadcastFilterClass:Ljava/lang/Class;
    :cond_1
    sget-object v4, Lcom/baidu/security/bm/BroadcastManagerService;->broadcastFilter_packageName:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 721
    :catch_0
    move-exception v2

    .line 722
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find Class: com.android.server.am.BroadcastFilter, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 723
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 724
    .local v2, e:Ljava/lang/NoSuchFieldException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find Field: packageName, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 725
    .end local v2           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 726
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal access Field: packageName, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 727
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 728
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal access Field: packageName, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 729
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 730
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getClassBroadcastFilterFieldPkgName(), RuntimeException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getPMSAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "attr"

    .prologue
    .line 767
    const/4 v3, 0x0

    .line 769
    .local v3, retVal:Ljava/lang/Object;
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPMSIBinder:Landroid/os/IBinder;

    if-nez v4, :cond_0

    .line 770
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPMSIBinder:Landroid/os/IBinder;

    .line 772
    :cond_0
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPMSIBinder:Landroid/os/IBinder;

    if-eqz v4, :cond_1

    .line 774
    :try_start_0
    const-string v4, "com.android.server.pm.PackageManagerService"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 775
    .local v2, pmsClass:Ljava/lang/Class;
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 776
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 777
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPMSIBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 794
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #pmsClass:Ljava/lang/Class;
    .end local v3           #retVal:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 778
    .restart local v3       #retVal:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 779
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find Class: com.android.server.pm.PackageManagerService, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 780
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 781
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find Field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 782
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 783
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal access Field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 784
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 785
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal access Field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 786
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 787
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "BroadcastManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BMS.getPMSAttribute(), RuntimeException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 791
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    const-string v4, "BroadcastManagerService"

    const-string v5, "BMS.getPMSAttribute(), can not get the instance of PackageManagerService"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getResolveInfo(Landroid/content/Intent;)Ljava/util/List;
    .locals 5
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    if-nez p1, :cond_0

    .line 799
    const/4 v1, 0x0

    .line 815
    :goto_0
    return-object v1

    .line 802
    :cond_0
    const/4 v1, 0x0

    .line 804
    .local v1, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BroadcastManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastManagerService.getResolveInfo(), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "packageName"
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 819
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 820
    :cond_0
    const/4 v1, 0x0

    .line 838
    :goto_0
    return-object v1

    .line 825
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.ACTION_MEDIA_BAD_REMOVAL"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 833
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/sdcard"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 836
    :cond_3
    invoke-direct {p0, v0}, Lcom/baidu/security/bm/BroadcastManagerService;->getResolveInfo(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 838
    .local v1, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0
.end method

.method private getSystemProtectedBroadcasts()Ljava/util/HashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 739
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mProtectedBroadcasts:Ljava/util/HashSet;

    if-nez v6, :cond_0

    .line 740
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mProtectedBroadcasts:Ljava/util/HashSet;

    .line 742
    :try_start_0
    const-string/jumbo v6, "mProtectedBroadcasts"

    invoke-direct {p0, v6}, Lcom/baidu/security/bm/BroadcastManagerService;->getPMSAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 743
    .local v3, fieldObject:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 744
    move-object v0, v3

    check-cast v0, Ljava/util/HashSet;

    move-object v5, v0

    .line 748
    .local v5, protectedBroadcasts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 749
    .local v4, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 750
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 751
    .local v1, action:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mProtectedBroadcasts:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 754
    .end local v1           #action:Ljava/lang/String;
    .end local v3           #fieldObject:Ljava/lang/Object;
    .end local v4           #it:Ljava/util/Iterator;
    .end local v5           #protectedBroadcasts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 755
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v6, "BroadcastManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BMS.getSystemProtectedBroadcasts(), RuntimeException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    .end local v2           #e:Ljava/lang/RuntimeException;
    :cond_0
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mProtectedBroadcasts:Ljava/util/HashSet;

    return-object v6
.end method

.method private static isRunningApp(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 10
    .parameter "packageName"
    .parameter "allRunningApp"

    .prologue
    const/4 v6, 0x0

    .line 657
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 701
    :cond_0
    :goto_0
    return v6

    .line 661
    :cond_1
    sget-object v7, Lcom/baidu/security/bm/BroadcastManagerService;->processRecord_pkgList:Ljava/lang/reflect/Field;

    if-nez v7, :cond_2

    .line 663
    :try_start_0
    const-string v7, "com.android.server.am.ProcessRecord"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 664
    .local v5, processRecordClass:Ljava/lang/Class;
    const-string/jumbo v7, "pkgList"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    sput-object v7, Lcom/baidu/security/bm/BroadcastManagerService;->processRecord_pkgList:Ljava/lang/reflect/Field;

    .line 665
    sget-object v7, Lcom/baidu/security/bm/BroadcastManagerService;->processRecord_pkgList:Ljava/lang/reflect/Field;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 674
    .end local v5           #processRecordClass:Ljava/lang/Class;
    :cond_2
    :goto_1
    sget-object v7, Lcom/baidu/security/bm/BroadcastManagerService;->processRecord_pkgList:Ljava/lang/reflect/Field;

    if-eqz v7, :cond_0

    .line 678
    const/4 v6, 0x0

    .line 679
    .local v6, retVal:Z
    const/4 v4, 0x0

    .line 680
    .local v4, pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 681
    .local v1, app:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 683
    :try_start_1
    sget-object v7, Lcom/baidu/security/bm/BroadcastManagerService;->processRecord_pkgList:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    move-object v0, v7

    check-cast v0, Ljava/util/HashSet;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    .line 689
    :goto_2
    if-eqz v4, :cond_3

    .line 692
    invoke-virtual {v4, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 693
    const/4 v6, 0x1

    .line 697
    goto :goto_0

    .line 666
    .end local v1           #app:Ljava/lang/Object;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6           #retVal:Z
    :catch_0
    move-exception v2

    .line 667
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v7, "BroadcastManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not find Class: com.android.server.am.ProcessRecord, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 668
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 669
    .local v2, e:Ljava/lang/NoSuchFieldException;
    const-string v7, "BroadcastManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not find Field: pkgList, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 670
    .end local v2           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 671
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v7, "BroadcastManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RuntimeException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 684
    .end local v2           #e:Ljava/lang/RuntimeException;
    .restart local v1       #app:Ljava/lang/Object;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6       #retVal:Z
    :catch_3
    move-exception v2

    .line 685
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v7, "BroadcastManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal access Field: pkgList, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 686
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 687
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "BroadcastManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal access Field: pkgList, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static main(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 153
    sget-object v0, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v0, Lcom/baidu/security/bm/BroadcastManagerService;

    invoke-direct {v0, p0}, Lcom/baidu/security/bm/BroadcastManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    .line 161
    const-string v0, "BroadcastManagerService"

    sget-object v1, Lcom/baidu/security/bm/BroadcastManagerService;->mService:Lcom/baidu/security/bm/BroadcastManagerService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public addCleanedApp(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 335
    if-nez p1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/security/bm/BroadcastManagerService;->isTrustedApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    .local v0, app:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 347
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v2, v1}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public addCleanedApps([Ljava/lang/String;)V
    .locals 8
    .parameter "packageNameArray"

    .prologue
    .line 354
    if-eqz p1, :cond_0

    array-length v6, p1

    if-gtz v6, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    .local v4, newPartApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 361
    .local v5, pkgName:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/baidu/security/bm/BroadcastManagerService;->isTrustedApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 359
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 364
    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 367
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 368
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v4}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 369
    .local v3, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v6, v3}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public addLockedApp(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 381
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    .local v0, app:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 384
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v2, v1}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public addLockedApps([Ljava/lang/String;)V
    .locals 8
    .parameter "packageNameArray"

    .prologue
    .line 391
    if-eqz p1, :cond_0

    array-length v6, p1

    if-gtz v6, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 396
    .local v4, newPartApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 397
    .local v5, pkgName:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 399
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v4}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 400
    .local v3, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v6, v3}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public appIsLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 452
    if-nez p1, :cond_0

    .line 453
    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/baidu/security/bm/LockedAppsController;->packageInLockedAppsList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentAutoLaunchApps()[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .locals 14

    .prologue
    .line 219
    iget-object v12, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mContext:Landroid/content/Context;

    if-nez v12, :cond_1

    .line 220
    const/4 v9, 0x0

    .line 287
    :cond_0
    return-object v9

    .line 222
    :cond_1
    const/4 v9, 0x0

    .line 224
    .local v9, retVal:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 226
    .local v4, autoLaunchAppList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    iget-object v12, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 227
    .local v1, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0}, Lcom/baidu/security/bm/BroadcastManagerService;->getSystemProtectedBroadcasts()Ljava/util/HashSet;

    move-result-object v10

    .line 255
    .local v10, systemActions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 257
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v12, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x8

    if-nez v12, :cond_2

    iget-object v12, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mProtectedApps:Ljava/util/HashSet;

    iget-object v13, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 259
    invoke-direct {p0, v2, v10}, Lcom/baidu/security/bm/BroadcastManagerService;->buildAutoLaunchAppInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/HashSet;)Lcom/baidu/security/bm/AutoLaunchAppInfo;

    move-result-object v3

    .line 265
    .local v3, autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    if-eqz v3, :cond_2

    .line 266
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #autoLaunchApp:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_3
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v11

    .line 272
    .local v11, totalAppNum:I
    if-lez v11, :cond_0

    .line 273
    new-array v9, v11, [Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .line 274
    const/4 v7, 0x0

    .line 275
    .local v7, index:I
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 276
    .local v8, it:Ljava/util/Iterator;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v11, :cond_0

    .line 277
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 278
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .line 279
    .local v0, alAppInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    aput-object v0, v9, v5

    .line 276
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public getLockedApps()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 437
    invoke-static {}, Lcom/baidu/security/bm/LockedAppsController;->getLockedAppsListForReading()Ljava/util/HashSet;

    move-result-object v3

    .line 438
    .local v3, lockedApps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 439
    .local v0, appsArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 440
    .local v1, i:I
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 441
    .local v4, pkgName:Ljava/lang/String;
    aput-object v4, v0, v1

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public isPackageStopped(Ljava/lang/String;)Z
    .locals 8
    .parameter "packageName"

    .prologue
    .line 470
    const/4 v4, 0x0

    .line 471
    .local v4, retVal:Z
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->pmSettings_mPackages:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 473
    :try_start_0
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mSettings:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 474
    const-string/jumbo v5, "mSettings"

    invoke-direct {p0, v5}, Lcom/baidu/security/bm/BroadcastManagerService;->getPMSAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mSettings:Ljava/lang/Object;

    .line 476
    :cond_0
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mSettings:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 477
    const-string v5, "com.android.server.pm.Settings"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 478
    .local v3, pmsClass:Ljava/lang/Class;
    const-string/jumbo v5, "mPackages"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 479
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 480
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageManagerService_mSettings:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iput-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->pmSettings_mPackages:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    .line 495
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v3           #pmsClass:Ljava/lang/Class;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->pmSettings_mPackages:Ljava/util/HashMap;

    if-eqz v5, :cond_3

    .line 496
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->pmSettings_mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 497
    .local v2, packageSetting:Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 499
    :try_start_1
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageSetting_stopped:Ljava/lang/reflect/Field;

    if-nez v5, :cond_2

    .line 500
    const-string v5, "com.android.server.pm.PackageSettingBase"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 501
    .restart local v3       #pmsClass:Ljava/lang/Class;
    const-string/jumbo v5, "stopped"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageSetting_stopped:Ljava/lang/reflect/Field;

    .line 502
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageSetting_stopped:Ljava/lang/reflect/Field;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 504
    .end local v3           #pmsClass:Ljava/lang/Class;
    :cond_2
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->packageSetting_stopped:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_9

    move-result v4

    .line 519
    .end local v2           #packageSetting:Ljava/lang/Object;
    :cond_3
    :goto_1
    return v4

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find Class: com.android.server.pm.Settings, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 485
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 486
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find Field: mPackages, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 487
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 488
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal access Field: mPackages, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 489
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 490
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal access Field: mPackages, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 491
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 492
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BMS.isPackageStopped(), RuntimeException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 505
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v2       #packageSetting:Ljava/lang/Object;
    :catch_5
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find Class: com.android.server.pm.PackageSettingBase, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 507
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_6
    move-exception v0

    .line 508
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find Field: stopped, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 509
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_7
    move-exception v0

    .line 510
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal access Field: stopped, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 511
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_8
    move-exception v0

    .line 512
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal access Field: stopped, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 513
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v0

    .line 514
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v5, "BroadcastManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BMS.isPackageStopped(), RuntimeException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public isTrustedApp(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 927
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mTrustedSilentApps:Ljava/util/HashSet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mTrustedSilentApps:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 944
    :cond_1
    :goto_0
    return v3

    .line 931
    :cond_2
    const/4 v2, 0x0

    .line 932
    .local v2, retVal:Z
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_1

    .line 934
    :try_start_0
    iget-object v4, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 935
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_1

    .line 936
    const/4 v2, 0x1

    goto :goto_0

    .line 939
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 940
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public packageInBlackList(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 328
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/baidu/security/bm/AutoLaunchController;->packageInBlackList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeLockedApp(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 407
    if-nez p1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 411
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 412
    .local v0, app:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 414
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v2, v1}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public removeLockedApps([Ljava/lang/String;)V
    .locals 8
    .parameter "packageNameArray"

    .prologue
    .line 421
    if-eqz p1, :cond_0

    array-length v6, p1

    if-gtz v6, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 426
    .local v0, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v5, v1, v2

    .line 427
    .local v5, pkgName:Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 429
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v0}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 430
    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v6, v4}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public updateBlackList([Lcom/baidu/security/bm/AutoLaunchAppInfo;)V
    .locals 8
    .parameter "newPart"

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 318
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    .local v5, newPartApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    move-object v1, p1

    .local v1, arr$:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 314
    .local v0, appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 316
    .end local v0           #appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_1
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v5}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 317
    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v6, v4}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public updateBlackListItem(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V
    .locals 4
    .parameter "appInfo"

    .prologue
    const/4 v3, 0x1

    .line 294
    if-nez p1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 298
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    .local v1, newPartApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v2, v3, v1}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 301
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManagerService;->mHandler:Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;

    invoke-virtual {v2, v0}, Lcom/baidu/security/bm/BroadcastManagerService$BlacklistHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
