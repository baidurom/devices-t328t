.class public Landroid/net/HtcMobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcMobileDataStateReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Landroid/net/HtcMobileDataStateReceiver;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Landroid/net/HtcMobileDataStateReceiver;->mHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    return-void
.end method
