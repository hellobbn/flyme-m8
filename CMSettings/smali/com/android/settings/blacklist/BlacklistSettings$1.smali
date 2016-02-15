.class Lorg/flerovium/settings/blacklist/BlacklistSettings$1;
.super Ljava/lang/Object;
.source "BlacklistSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/blacklist/BlacklistSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/blacklist/BlacklistSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/blacklist/BlacklistSettings;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/flerovium/settings/blacklist/BlacklistSettings$1;->this$0:Lorg/flerovium/settings/blacklist/BlacklistSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/flerovium/settings/blacklist/BlacklistSettings$1;->this$0:Lorg/flerovium/settings/blacklist/BlacklistSettings;

    const-wide/16 v2, -0x1

    # invokes: Lorg/flerovium/settings/blacklist/BlacklistSettings;->showEntryEditDialog(J)V
    invoke-static {v0, v2, v3}, Lorg/flerovium/settings/blacklist/BlacklistSettings;->access$000(Lorg/flerovium/settings/blacklist/BlacklistSettings;J)V

    .line 105
    return-void
.end method
