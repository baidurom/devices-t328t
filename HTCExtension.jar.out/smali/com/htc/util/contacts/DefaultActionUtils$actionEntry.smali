.class public Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;
.super Ljava/lang/Object;
.source "DefaultActionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/DefaultActionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "actionEntry"
.end annotation


# instance fields
.field public mIntentAction:Ljava/lang/String;

.field public mKind:I

.field public mType:I

.field public mUri:Landroid/net/Uri;

.field public raw_id:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput v0, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mKind:I

    .line 108
    iput v0, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mType:I

    .line 109
    iput-object v1, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mIntentAction:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->mUri:Landroid/net/Uri;

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/util/contacts/DefaultActionUtils$actionEntry;->raw_id:J

    .line 112
    return-void
.end method
