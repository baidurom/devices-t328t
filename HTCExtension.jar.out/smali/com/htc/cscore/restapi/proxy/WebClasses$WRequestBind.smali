.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WRequestBind"
.end annotation


# instance fields
.field public EmailAddress:Ljava/lang/String;

.field public HandsetDeviceId:Ljava/util/UUID;

.field public PhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
