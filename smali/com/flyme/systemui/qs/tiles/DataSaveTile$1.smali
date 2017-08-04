.class Lcom/flyme/systemui/qs/tiles/DataSaveTile$1;
.super Ljava/lang/Object;
.source "DataSaveTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/DataSaveTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/DataSaveTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/DataSaveTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/DataSaveTile;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/DataSaveTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSaveChanged()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/DataSaveTile;

    invoke-static {v0}, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->-wrap0(Lcom/flyme/systemui/qs/tiles/DataSaveTile;)V

    .line 63
    return-void
.end method
