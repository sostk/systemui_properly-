.class public Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;
.super Lcom/meizu/common/renderer/effect/op/DrawOp;
.source "DrawGLSLOp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/op/DrawOp;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/op/DrawOp;-><init>()V

    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;->init(IIII)Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;

    .line 15
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 26
    return v0
.end method

.method public init(IIII)Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;->x:I

    .line 19
    iput p2, p0, Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;->y:I

    .line 20
    iput p3, p0, Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;->width:I

    .line 21
    iput p4, p0, Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;->height:I

    .line 22
    return-object p0
.end method
