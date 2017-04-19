# vagrant-box

公式のVagrantが更新されなくなったため作ってみました.
rancherosを単純に使うだけであればdocker-machineで利用する方が簡単です

[rancheros quick start](http://docs.rancher.com/os/quick-start-guide/)

ローカルに開発環境として構築する際、docker-machineでは仮想サーバに対する設定に制限があり
作成したい環境が作れなかったためvagrand-boxを自作することにしました

何人か先人がいましたので参考にさせていただきました（thanks!)
* (https://github.com/bayazee/vagrant-rancheros)
* (https://github.com/yeongsheng-tan/vagrant-rancheros)

gradleプロジェクトに単なる趣味です。深い意味はありません(^^;

---

* 動作検証環境
```
  ubuntu 16.04 LTS
  Vagrant 1.9.3
  docker-machine version 0.10.0, build 76ed2a6
```

* 注意事項

vagrant,VBoxManageコマンドがsudo実行（パスワードなし）可能であること




