.class final Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;
.super Ljava/lang/Object;
.source "HtcTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IccAPDUArgument"
.end annotation


# instance fields
.field public channel:I

.field public cla:I

.field public command:I

.field public data:Ljava/lang/String;

.field public p1:I

.field public p2:I

.field public p3:I


# direct methods
.method public constructor <init>(IIIIIILjava/lang/String;)V
    .locals 0
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    iput p3, p0, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->channel:I

    .line 1114
    iput p1, p0, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->cla:I

    .line 1115
    iput p2, p0, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->command:I

    .line 1116
    iput p4, p0, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->p1:I

    .line 1117
    iput p5, p0, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->p2:I

    .line 1118
    iput p6, p0, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->p3:I

    .line 1119
    iput-object p7, p0, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->data:Ljava/lang/String;

    .line 1120
    return-void
.end method
