.class public Lcom/htc/util/phone/CallStateIntents$PreciseState;
.super Ljava/lang/Object;
.source "CallStateIntents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/phone/CallStateIntents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreciseState"
.end annotation


# static fields
.field public static final ACTION_CALL_STATE_CHANGED:Ljava/lang/String; = "com.htc.telephony.intent.action.PHONE_STATE_CHANGED"

.field public static final EXTRA_KEY_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final EXTRA_KEY_DISPLAY_NUMBER:Ljava/lang/String; = "display_number"

.field public static final EXTRA_KEY_IS_INCOMING:Ljava/lang/String; = "incoming"

.field public static final EXTRA_KEY_IS_MULTI_PARTY:Ljava/lang/String; = "is_multi_party"

.field public static final EXTRA_KEY_NUMBER:Ljava/lang/String; = "number"

.field public static final EXTRA_KEY_PHOTO:Ljava/lang/String; = "photo"

.field public static final EXTRA_KEY_START_TIME:Ljava/lang/String; = "start_time"

.field public static final EXTRA_KEY_STATE:Ljava/lang/String; = "state"

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_DIALING:I = 0x3

.field public static final STATE_HOLDING:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_RINGING:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/htc/util/phone/CallStateIntents;


# direct methods
.method public constructor <init>(Lcom/htc/util/phone/CallStateIntents;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/util/phone/CallStateIntents$PreciseState;->this$0:Lcom/htc/util/phone/CallStateIntents;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
