.class public final enum Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;
.super Ljava/lang/Enum;
.source "PhotoUploadCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UPLOAD_RESULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

.field public static final enum FAIL_CANCEL_UPLOAD:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

.field public static final enum FAIL_CONNECTION_ERROR:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

.field public static final enum FAIL_FILE_NOT_FOUND:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

.field public static final enum FAIL_INVALID_USERNAME_PASSWORD:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

.field public static final enum FAIL_SERVER_ERROR:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

.field public static final enum FAIL_SERVER_UNAVAILABLE:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

.field public static final enum SUCCESS_UPLOAD:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    const-string v1, "SUCCESS_UPLOAD"

    invoke-direct {v0, v1, v3}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->SUCCESS_UPLOAD:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    const-string v1, "FAIL_CANCEL_UPLOAD"

    invoke-direct {v0, v1, v4}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_CANCEL_UPLOAD:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    const-string v1, "FAIL_CONNECTION_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_CONNECTION_ERROR:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    const-string v1, "FAIL_SERVER_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_SERVER_UNAVAILABLE:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    const-string v1, "FAIL_SERVER_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_SERVER_ERROR:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    const-string v1, "FAIL_INVALID_USERNAME_PASSWORD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_INVALID_USERNAME_PASSWORD:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    const-string v1, "FAIL_FILE_NOT_FOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_FILE_NOT_FOUND:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    .line 4
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    sget-object v1, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->SUCCESS_UPLOAD:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_CANCEL_UPLOAD:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_CONNECTION_ERROR:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_SERVER_UNAVAILABLE:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_SERVER_ERROR:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_INVALID_USERNAME_PASSWORD:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->FAIL_FILE_NOT_FOUND:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->$VALUES:[Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;
    .locals 1
    .parameter "name"

    .prologue
    .line 4
    const-class v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    return-object v0
.end method

.method public static values()[Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->$VALUES:[Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    invoke-virtual {v0}, [Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback$UPLOAD_RESULT;

    return-object v0
.end method
