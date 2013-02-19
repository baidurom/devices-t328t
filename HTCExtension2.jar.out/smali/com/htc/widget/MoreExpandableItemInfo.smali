.class public Lcom/htc/widget/MoreExpandableItemInfo;
.super Ljava/lang/Object;
.source "MoreExpandableItemInfo.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mBackground:[Landroid/graphics/drawable/ColorDrawable;


# instance fields
.field private mChildren:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mId:J

.field private mIsChildExpanded:Z

.field private mIsGroup:Z

.field private mIsGroupExpanded:Z

.field private mLevel:I

.field private mParent:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mUserBackgroundEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 9
    const-string v0, "MoreExpandableItemInfo"

    sput-object v0, Lcom/htc/widget/MoreExpandableItemInfo;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x242425

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/widget/MoreExpandableItemInfo;->mBackground:[Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 4
    .parameter "id"
    .parameter "isGroup"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mId:J

    .line 12
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mLevel:I

    .line 13
    iput-object v3, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 14
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsGroup:Z

    .line 15
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsGroupExpanded:Z

    .line 16
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsChildExpanded:Z

    .line 17
    iput-object v3, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    .line 21
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mUserBackgroundEnable:Z

    .line 31
    iput-wide p1, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mId:J

    .line 32
    iput-boolean p3, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsGroup:Z

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    .line 34
    iput v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mLevel:I

    .line 35
    return-void
.end method

.method static getBackground(I)Landroid/graphics/drawable/ColorDrawable;
    .locals 2
    .parameter "level"

    .prologue
    .line 175
    sget-object v0, Lcom/htc/widget/MoreExpandableItemInfo;->mBackground:[Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getChildPosition(II)I
    .locals 1
    .parameter "groupPosition"
    .parameter "position"

    .prologue
    const/high16 v0, -0x8000

    .line 89
    if-ne p0, v0, :cond_0

    .line 92
    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static getPosition(II)I
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/high16 v0, -0x8000

    .line 78
    if-eq p0, v0, :cond_0

    if-ne p1, v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setChildCollapse()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsChildExpanded:Z

    .line 113
    return-void
.end method

.method private setChildExpanded()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsChildExpanded:Z

    .line 109
    return-void
.end method

.method private setParent(Lcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 100
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mLevel:I

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mLevel:I

    goto :goto_0
.end method


# virtual methods
.method getChildren()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getChildrenCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method getExpandedChild()Lcom/htc/widget/MoreExpandableItemInfo;
    .locals 3

    .prologue
    .line 162
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 164
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 166
    .local v1, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    .end local v1           #temp:Lcom/htc/widget/MoreExpandableItemInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mId:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mLevel:I

    return v0
.end method

.method public getParent()Lcom/htc/widget/MoreExpandableItemInfo;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    return-object v0
.end method

.method public getParentId()J
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getId()J

    move-result-wide v0

    .line 69
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getUserBackgroundEnable()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mUserBackgroundEnable:Z

    return v0
.end method

.method public isChildExpanded()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsChildExpanded:Z

    return v0
.end method

.method public isGroup()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsGroup:Z

    return v0
.end method

.method public isGroupExpanded()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsGroupExpanded:Z

    return v0
.end method

.method isLastChild()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 157
    :cond_0
    return v0
.end method

.method public onCollapseDelete()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method setChildren(Ljava/util/LinkedList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 129
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    .line 131
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 133
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/widget/MoreExpandableItemInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/MoreExpandableItemInfo;

    .line 135
    .local v1, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-direct {v1, p0}, Lcom/htc/widget/MoreExpandableItemInfo;->setParent(Lcom/htc/widget/MoreExpandableItemInfo;)V

    goto :goto_0

    .line 137
    .end local v1           #temp:Lcom/htc/widget/MoreExpandableItemInfo;
    :cond_0
    const/4 v1, 0x0

    .line 139
    .restart local v1       #temp:Lcom/htc/widget/MoreExpandableItemInfo;
    return-void
.end method

.method setGroupCollapse()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsGroupExpanded:Z

    .line 123
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-direct {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildCollapse()V

    .line 125
    :cond_0
    return-void
.end method

.method setGroupExpanded()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsGroupExpanded:Z

    .line 117
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-direct {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildExpanded()V

    .line 119
    :cond_0
    return-void
.end method

.method public setUserBackgroundEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mUserBackgroundEnable:Z

    .line 196
    return-void
.end method
