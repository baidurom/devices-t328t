.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WOwnerInfo;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WOwnerInfo"
.end annotation


# instance fields
.field public FirstName:Ljava/lang/String;

.field public IsMe:Ljava/lang/Boolean;

.field public LastName:Ljava/lang/String;

.field public ProfileImage:Lcom/htc/cscore/restapi/proxy/WebClasses$WProfileImage;

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
