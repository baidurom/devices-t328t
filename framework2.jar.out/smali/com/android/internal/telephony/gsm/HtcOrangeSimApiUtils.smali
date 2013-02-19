.class public Lcom/android/internal/telephony/gsm/HtcOrangeSimApiUtils;
.super Ljava/lang/Object;
.source "HtcOrangeSimApiUtils.java"


# static fields
.field private static final isOrangeSimApiEnabled:Z

.field private static final mController:Lcom/android/internal/telephony/gsm/HtcOrangeSimApiControllerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSimAuthentication()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiUtils;->isOrangeSimApiEnabled:Z

    .line 25
    sget-boolean v0, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiUtils;->isOrangeSimApiEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;-><init>()V

    :goto_0
    sput-object v0, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiUtils;->mController:Lcom/android/internal/telephony/gsm/HtcOrangeSimApiControllerInterface;

    .line 26
    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiDummyController;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiDummyController;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "context"
    .parameter "ci"

    .prologue
    .line 30
    sget-object v0, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiUtils;->mController:Lcom/android/internal/telephony/gsm/HtcOrangeSimApiControllerInterface;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiControllerInterface;->init(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 31
    return-void
.end method
