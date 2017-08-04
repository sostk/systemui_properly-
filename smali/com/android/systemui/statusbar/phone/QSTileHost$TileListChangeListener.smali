.class Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileListChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 517
    const-string/jumbo v0, "shortcut_order"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-get1(Lcom/android/systemui/statusbar/phone/QSTileHost;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-get6(Lcom/android/systemui/statusbar/phone/QSTileHost;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-wrap0(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 516
    :cond_0
    return-void
.end method
