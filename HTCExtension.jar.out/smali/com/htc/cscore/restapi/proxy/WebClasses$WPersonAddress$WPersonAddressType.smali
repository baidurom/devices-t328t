.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WPersonAddressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

.field public static final enum AddressHome:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

.field public static final enum AddressOther:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

.field public static final enum AddressWork:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1390
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

    const-string v1, "AddressWork"

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;->AddressWork:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

    .line 1391
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

    const-string v1, "AddressHome"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;->AddressHome:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

    .line 1392
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

    const-string v1, "AddressOther"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;->AddressOther:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

    .line 1389
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;->AddressWork:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;->AddressHome:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;->AddressOther:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1389
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;
    .locals 1
    .parameter "name"

    .prologue
    .line 1389
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;
    .locals 1

    .prologue
    .line 1389
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

    return-object v0
.end method
