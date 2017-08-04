.class Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;
.super Ljava/lang/Object;
.source "ActiveViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/activeview/views/ActiveViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewElementData"
.end annotation


# instance fields
.field mElementData:Lcom/meizu/flyme/activeview/json/Element;

.field mView:Landroid/view/View;

.field mViewType:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;


# direct methods
.method private constructor <init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V
    .locals 0

    .prologue
    .line 2263
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;
    .param p2, "x1"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;

    .prologue
    .line 2263
    invoke-direct {p0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V

    return-void
.end method
