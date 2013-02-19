.class public Lcom/htc/opensense/social/data/Tag;
.super Lcom/htc/opensense/social/data/Attachment;
.source "Tag.java"


# static fields
.field public static final TAG_TEXT:Ljava/lang/String; = "text"


# instance fields
.field public text:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "text"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/htc/opensense/social/data/Tag;

    invoke-direct {p0, v0}, Lcom/htc/opensense/social/data/Attachment;-><init>(Ljava/lang/Class;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/opensense/social/data/Tag;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/opensense/social/data/Tag;->text:Ljava/lang/String;

    .line 43
    return-void
.end method
