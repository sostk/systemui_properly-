.class Lcom/meizu/common/renderer/effect/StateMachine$StateCache;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/effect/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateCache"
.end annotation


# instance fields
.field private mCache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/meizu/common/renderer/effect/StateMachine$State;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    .line 57
    iput v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mSize:I

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    .line 60
    iput p1, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mSize:I

    .line 61
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 84
    return-void
.end method

.method public get()Lcom/meizu/common/renderer/effect/StateMachine$State;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 67
    new-instance v0, Lcom/meizu/common/renderer/effect/StateMachine$State;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/StateMachine$State;-><init>()V

    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/renderer/effect/StateMachine$State;

    return-object v0
.end method

.method public put(Lcom/meizu/common/renderer/effect/StateMachine$State;)V
    .locals 3
    .param p1, "state"    # Lcom/meizu/common/renderer/effect/StateMachine$State;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mSize:I

    if-lt v1, v2, :cond_3

    .line 80
    :goto_1
    return-void

    .line 71
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 73
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 72
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 74
    :cond_2
    return-void

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
