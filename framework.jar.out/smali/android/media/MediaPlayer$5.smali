.class Landroid/media/MediaPlayer$5;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->initDLNA()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 3327
    iput-object p1, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3329
    iget-object v0, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->initDLNAController()V
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$2100(Landroid/media/MediaPlayer;)V

    .line 3330
    return-void
.end method
