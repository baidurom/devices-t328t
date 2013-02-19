.class public final enum Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;
.super Ljava/lang/Enum;
.source "HtcPhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdk/service/cloudstorage/HtcPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

.field public static final enum LARGE:Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

.field public static final enum MEDIUM:Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

.field public static final enum SMALL:Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;


# instance fields
.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v2, v2}, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;->SMALL:Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

    .line 76
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3, v3}, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;->MEDIUM:Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

    .line 77
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v4, v4}, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;->LARGE:Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;->SMALL:Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;->MEDIUM:Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;->LARGE:Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;->$VALUES:[Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;->size:I

    .line 82
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;
    .locals 1
    .parameter "name"

    .prologue
    .line 74
    const-class v0, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

    return-object v0
.end method

.method public static values()[Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;->$VALUES:[Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

    invoke-virtual {v0}, [Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;

    return-object v0
.end method
