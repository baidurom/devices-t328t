.class public Lcom/baidu/service/YiServiceManager;
.super Ljava/lang/Object;
.source "YiServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/service/YiServiceManager$ServiceEnum;
    }
.end annotation


# static fields
.field public static final SECURITY_SERVICES_STARTUP:Z = true

.field public static final SERVICE_TAG:Ljava/lang/String; = "YiServiceLoader"

.field public static START_TYPE_BOOTING:I = 0x0

.field public static START_TYPE_BOOT_COMPLETED:I = 0x0

.field public static START_TYPE_INVALID:I = 0x0

.field public static final TAG:Ljava/lang/String; = "YiServiceManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/baidu/service/YiServiceManager;->START_TYPE_INVALID:I

    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/baidu/service/YiServiceManager;->START_TYPE_BOOTING:I

    .line 30
    const/4 v0, 0x2

    sput v0, Lcom/baidu/service/YiServiceManager;->START_TYPE_BOOT_COMPLETED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getServiceEnum(Ljava/lang/String;)Lcom/baidu/service/YiServiceManager$ServiceEnum;
    .locals 6
    .parameter "serviceName"

    .prologue
    .line 119
    if-nez p0, :cond_1

    .line 120
    const/4 v3, 0x0

    .line 131
    :cond_0
    :goto_0
    return-object v3

    .line 123
    :cond_1
    const/4 v3, 0x0

    .line 124
    .local v3, retVal:Lcom/baidu/service/YiServiceManager$ServiceEnum;
    invoke-static {}, Lcom/baidu/service/YiServiceManager$ServiceEnum;->values()[Lcom/baidu/service/YiServiceManager$ServiceEnum;

    move-result-object v0

    .local v0, arr$:[Lcom/baidu/service/YiServiceManager$ServiceEnum;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 125
    .local v4, se:Lcom/baidu/service/YiServiceManager$ServiceEnum;
    invoke-virtual {v4}, Lcom/baidu/service/YiServiceManager$ServiceEnum;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    move-object v3, v4

    .line 127
    goto :goto_0

    .line 124
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static hasService(Ljava/lang/String;)Z
    .locals 2
    .parameter "serviceName"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, retVal:Z
    invoke-static {p0}, Lcom/baidu/service/YiServiceManager;->getServiceEnum(Ljava/lang/String;)Lcom/baidu/service/YiServiceManager$ServiceEnum;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 108
    :cond_0
    return v0
.end method
