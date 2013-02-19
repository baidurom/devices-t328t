.class public Lcom/android/internal/telephony/CallManager$SelfCallTracker;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelfCallTracker"
.end annotation


# static fields
.field public static final EVENT_CALL_STATE_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$SelfCallTracker;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getRegEvent()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method
