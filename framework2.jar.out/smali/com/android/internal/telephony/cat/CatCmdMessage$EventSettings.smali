.class public Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventSettings"
.end annotation


# instance fields
.field public eventList:[I

.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
