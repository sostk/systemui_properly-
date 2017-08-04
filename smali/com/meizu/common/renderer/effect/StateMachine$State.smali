.class Lcom/meizu/common/renderer/effect/StateMachine$State;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/effect/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field mFrameBufferId:I

.field final mModelMatrix:[F

.field final mTexMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$State;->mModelMatrix:[F

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$State;->mTexMatrix:[F

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$State;->mFrameBufferId:I

    .line 45
    return-void
.end method


# virtual methods
.method public init([F[FI)Lcom/meizu/common/renderer/effect/StateMachine$State;
    .locals 3
    .param p1, "modelMatrix"    # [F
    .param p2, "texMatrix"    # [F
    .param p3, "frameBufferId"    # I

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$State;->mModelMatrix:[F

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$State;->mTexMatrix:[F

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iput p3, p0, Lcom/meizu/common/renderer/effect/StateMachine$State;->mFrameBufferId:I

    .line 52
    return-object p0
.end method
