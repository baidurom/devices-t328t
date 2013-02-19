.class public Lcom/htc/opensense/provider/SelectionBuilder;
.super Ljava/lang/Object;
.source "SelectionBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelection:Ljava/lang/StringBuilder;

.field private mSelectionArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/htc/opensense/provider/SelectionBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/provider/SelectionBuilder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    return-void
.end method

.method private assertTable()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mTable:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    return-void
.end method

.method private mapColumns([Ljava/lang/String;)V
    .locals 4
    .parameter "columns"

    .prologue
    .line 148
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    .local v1, target:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 151
    aput-object v1, p1, v0

    .line 148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v1           #target:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public appendWhere(Ljava/lang/String;)Lcom/htc/opensense/provider/SelectionBuilder;
    .locals 2
    .parameter "selection"

    .prologue
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-object p0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 3
    .parameter "db"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/htc/opensense/provider/SelectionBuilder;->assertTable()V

    .line 198
    iget-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense/provider/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense/provider/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public map(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense/provider/SelectionBuilder;
    .locals 3
    .parameter "fromColumn"
    .parameter "toClause"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-object p0
.end method

.method public mapToTable(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense/provider/SelectionBuilder;
    .locals 3
    .parameter "column"
    .parameter "table"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-object p0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "db"
    .parameter "columns"
    .parameter "orderBy"

    .prologue
    const/4 v3, 0x0

    .line 167
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense/provider/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "columns"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/opensense/provider/SelectionBuilder;->assertTable()V

    .line 176
    if-eqz p2, :cond_0

    .line 177
    invoke-direct {p0, p2}, Lcom/htc/opensense/provider/SelectionBuilder;->mapColumns([Ljava/lang/String;)V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense/provider/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense/provider/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public reset()Lcom/htc/opensense/provider/SelectionBuilder;
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 56
    iget-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    return-object p0
.end method

.method public table(Ljava/lang/String;)Lcom/htc/opensense/provider/SelectionBuilder;
    .locals 0
    .parameter "table"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectionBuilder[table="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense/provider/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectionArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense/provider/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .locals 3
    .parameter "db"
    .parameter "values"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/htc/opensense/provider/SelectionBuilder;->assertTable()V

    .line 189
    iget-object v0, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense/provider/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense/provider/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs where(Ljava/lang/String;[Ljava/lang/String;)Lcom/htc/opensense/provider/SelectionBuilder;
    .locals 6
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    if-eqz p2, :cond_2

    array-length v4, p2

    if-lez v4, :cond_2

    .line 67
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Valid selection required when including arguments="

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 76
    iget-object v4, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    if-eqz p2, :cond_2

    .line 83
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 84
    .local v0, arg:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/opensense/provider/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    return-object p0
.end method
