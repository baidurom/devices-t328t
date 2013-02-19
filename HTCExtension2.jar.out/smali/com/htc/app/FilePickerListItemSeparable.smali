.class public Lcom/htc/app/FilePickerListItemSeparable;
.super Ljava/lang/Object;
.source "FilePickerListItemSeparable.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field isSeparator:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "isSeparator"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerListItemSeparable;->DEBUG:Z

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerListItemSeparable;->TAG:Ljava/lang/String;

    .line 16
    iput-boolean p1, p0, Lcom/htc/app/FilePickerListItemSeparable;->isSeparator:Z

    .line 17
    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/htc/app/FilePickerListItemSeparable;->isSeparator:Z

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 2
    .parameter "listitem"

    .prologue
    const/4 v1, 0x1

    .line 35
    if-nez p1, :cond_0

    move v0, v1

    .line 45
    .end local p1
    :goto_0
    return v0

    .line 37
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/htc/widget/HtcListItemSeparable;

    if-nez v0, :cond_1

    move v0, v1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    iget-boolean v0, p0, Lcom/htc/app/FilePickerListItemSeparable;->isSeparator:Z

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/htc/app/FilePickerListItemSeparable;

    iget-boolean v0, v0, Lcom/htc/app/FilePickerListItemSeparable;->isSeparator:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/htc/app/FilePickerListItemSeparable;->isSeparator:Z

    if-nez v0, :cond_4

    check-cast p1, Lcom/htc/app/FilePickerListItemSeparable;

    .end local p1
    iget-boolean v0, p1, Lcom/htc/app/FilePickerListItemSeparable;->isSeparator:Z

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    .line 42
    goto :goto_0

    .line 45
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
