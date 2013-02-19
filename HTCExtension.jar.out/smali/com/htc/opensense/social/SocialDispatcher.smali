.class public abstract Lcom/htc/opensense/social/SocialDispatcher;
.super Ljava/lang/Object;
.source "SocialDispatcher.java"


# static fields
.field public static final API_ERROR:I = 0x1

.field public static final API_ERROR_NOT_EXIST:I = 0x3

.field public static final AUTHENTICTION_ERROR:I = 0x2

.field public static final CONNECTION_ERROR:I = 0x4

.field public static final FILE_IO_ERROR:I = 0x6

.field public static final GENERAL_ERROR:I = -0x1

.field public static final MSG_FAIL:I = 0x0

.field public static final MSG_SUCCESS:I = 0x1

.field public static final NETWORK_ERROR:I = 0x0

.field public static final NOT_FOUND_ERROR:I = 0x8

.field public static final PARSER_ERROR:I = 0x5

.field public static final RATE_LIMIT_ERROR:I = 0x7

.field public static final UNAUTHORIZED:I = 0x191


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method

.method public abstract runOperation(Ljava/lang/String;Ljava/lang/Object;)Landroid/os/Message;
.end method
