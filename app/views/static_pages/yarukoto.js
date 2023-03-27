<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="utf-8">
    <title>Todo List App</title>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    
    <style>
    body, html {
      height: 100%;
      margin: 0;
      padding: 0;
    }

    .container {
      display: flex;
      flex-wrap: wrap;
      height: 100%;
    }

    .section {
    flex: 1 0 50%;
    height: 50%;
    box-sizing: border-box;
    padding: 15px;
    border: 1px solid black;
    overflow-y: scroll;
    }

    .task {
      margin: 10px;
      padding: 10px;
      background-color: #eee;
      border: 1px solid #ccc;
    }

    @media print {
      body, html {
        width: 297mm;
        height: 210mm;
      }
      .container {
        width: 100%;
        height: 100%;
      }
      .section {
        width: 50%;
        height: 50%;
      }
    }
    .completed {
      text-decoration: line-through;
      color: red;
    }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="section">
        <div id="app1">
          <h4 style="margin: 0">やることリスト【緊急かつ重要】</h4>
          <input v-model="newTask" placeholder="ここにタスクを入力‥" @keyup.enter="addTask">
          
          <ul>
            <li v-for="(task, index) in tasks" :key="index" :class="{ completed: task.completed }" @click="toggleCompleted(index)">
              <div style="display: flex; align-items: center;">
                <div style="flex: 1">{{ task.description }}</div>
                <span style="cursor: pointer;" @click.stop="removeTask(index)">×</span>
              </div>
            </li>
          </ul>
        </div>
            
      </div>

      <div class="section">
        <div id="app2">
          <h4 style="margin: 0; display:flex; justify-content: space-between; align-items: center;">【緊急でないが重要】<div style="margin-right: 1cm; text-align: right;">{{ new Date().toLocaleDateString('ja-JP') }}</div>
          </h4>
          <div style="display:flex; justify-content: space-between; align-items: center;">
            <input v-model="newTask" placeholder="ここにタスクを入力‥" @keyup.enter="addTask">
          </div> 
          <ul>
            <li v-for="(task, index) in tasks" :key="index" :class="{ completed: task.completed }" @click="toggleCompleted(index)">
              <div style="display: flex; align-items: center;">
                <div style="flex: 1">{{ task.description }}</div>
                <span style="cursor: pointer;" @click.stop="removeTask(index)">×</span>
              </div>
            </li>
          </ul>
        </div>
      </div>
      
      
          
      <div class="section">
        <div id="app3">
          <h4 style="margin: 0">【緊急だが重要ではない】</h4>
          <input v-model="newTask" placeholder="ここにタスクを入力‥" @keyup.enter="addTask">
          <ul>
            <li v-for="(task, index) in tasks" :key="index" :class="{ completed: task.completed }" @click="toggleCompleted(index)">
              <div style="display: flex; align-items: center;">
                <div style="flex: 1">{{ task.description }}</div>
                <span style="cursor: pointer;" @click.stop="removeTask(index)">×</span>
              </div>
            </li>
          </ul>
        </div>
      </div>

      <div class="section">
        <div id="app4">
          <h4 style="margin: 0">【緊急でも重要でもない】</h4>
          <input v-model="newTask" placeholder="ここにタスクを入力‥" @keyup.enter="addTask">
          <ul>
            <li v-for="(task, index) in tasks" :key="index" :class="{ completed: task.completed }" @click="toggleCompleted(index)">
              <div style="display: flex; align-items: center;">
                <div style="flex: 1">{{ task.description }}</div>
                <span style="cursor: pointer;" @click.stop="removeTask(index)">×</span>
              </div>
            </li>
          </ul>
        </div>
      </div>

    </div>



    <script>
      var app = new Vue({
        el: '#app1',
        data: {
          newTask: '',
          tasks: [
            { description: '自主学習', completed: false },
            { description: 'もくもく', completed: false }
          ]
        },
        methods: {
          addTask: function() {
            if (this.newTask.trim()) {
              this.tasks.push({ description: this.newTask, completed: false });
              this.newTask = '';
            }
          },
          toggleCompleted: function(index) {
            this.tasks[index].completed = !this.tasks[index].completed;
          },
          removeTask: function(index) {
          this.tasks.splice(index, 1);
          }
        }
      });

      var app = new Vue({
        el: '#app2',
        data: {
          newTask: '',
          tasks: [
          ]
        },
        methods: {
          addTask: function() {
            if (this.newTask.trim()) {
              this.tasks.push({ description: this.newTask, completed: false });
              this.newTask = '';
            }
          },
          toggleCompleted: function(index) {
            this.tasks[index].completed = !this.tasks[index].completed;
          },
          removeTask: function(index) {
          this.tasks.splice(index, 1);
          }
        }
      });

      var app = new Vue({
        el: '#app3',
        data: {
          newTask: '',
          tasks: [
          ]
        },
        methods: {
          addTask: function() {
            if (this.newTask.trim()) {
              this.tasks.push({ description: this.newTask, completed: false });
              this.newTask = '';
            }
          },
          toggleCompleted: function(index) {
            this.tasks[index].completed = !this.tasks[index].completed;
          },
          removeTask: function(index) {
          this.tasks.splice(index, 1);
          }
        }
      });

      var app = new Vue({
        el: '#app4',
        data: {
          newTask: '',
          tasks: [
          ]
        },
        methods: {
          addTask: function() {
            if (this.newTask.trim()) {
              this.tasks.push({ description: this.newTask, completed: false });
              this.newTask = '';
            }
          },
          toggleCompleted: function(index) {
            this.tasks[index].completed = !this.tasks[index].completed;
          },
          removeTask: function(index) {
          this.tasks.splice(index, 1);
          }
        }
      });
    </script>
  </body>
</html>