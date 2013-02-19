.class Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;
.super Ljava/lang/Object;
.source "HtcSimCardAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthenticationContext"
.end annotation


# instance fields
.field is3gSim:Z

.field onComplete:Landroid/os/Message;


# direct methods
.method constructor <init>(ZLandroid/os/Message;)V
    .locals 0
    .parameter "is3gSim"
    .parameter "onComplete"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->is3gSim:Z

    .line 114
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    .line 115
    return-void
.end method
