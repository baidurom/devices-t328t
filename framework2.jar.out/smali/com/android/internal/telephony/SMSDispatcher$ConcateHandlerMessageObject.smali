.class Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConcateHandlerMessageObject"
.end annotation


# instance fields
.field public tContext:Landroid/content/Context;

.field public tErrorCode:I

.field public tSentIntent:Landroid/app/PendingIntent;

.field public tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Landroid/app/PendingIntent;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "intentsent"
    .parameter "tracker"
    .parameter "errorcode"

    .prologue
    .line 3161
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 3162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3163
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tContext:Landroid/content/Context;

    .line 3164
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tSentIntent:Landroid/app/PendingIntent;

    .line 3165
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 3166
    iput p5, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tErrorCode:I

    .line 3167
    return-void
.end method
