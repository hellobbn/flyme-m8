.class Lorg/flerovium/settings/RadioInfo$19;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/RadioInfo;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1105
    iput-object p1, p0, Lorg/flerovium/settings/RadioInfo$19;->this$0:Lorg/flerovium/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1107
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1109
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lorg/flerovium/settings/RadioInfo$19;->this$0:Lorg/flerovium/settings/RadioInfo;

    invoke-virtual {v2, v1}, Lorg/flerovium/settings/RadioInfo;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :goto_0
    return-void

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lorg/flerovium/settings/RadioInfo$19;->this$0:Lorg/flerovium/settings/RadioInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OEM-specific Info/Settings Activity Not Found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/flerovium/settings/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/flerovium/settings/RadioInfo;->access$1000(Lorg/flerovium/settings/RadioInfo;Ljava/lang/String;)V

    goto :goto_0
.end method
