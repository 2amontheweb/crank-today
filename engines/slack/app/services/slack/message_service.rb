module Slack
  class MessageService
    attr_reader :message, :text

    def initialize(message: nil, text: '', user: nil)
      @message = message
      @text = text
      @user = user || message.user
    end

    def handle(task: nil)
      @task = task || find_task
      return digest if task_is 'digest'
      return today if task_is 'today'
      return reset if task_is 'reset'
      append
    end

    private

    attr_reader :task, :user

    def append
      message.append!(text)
      'Message Updated. Keep Cranking!!!'
    end

    def digest
      user.team_digest
    end

    def find_task
      @task ||= text.split(' ').first
    end

    def reset
      message.reset!
      "Today's Crank Message has been reset!"
    end

    def task_is(task = '')
      text == find_task && find_task == task
    end

    def today
      return 'Not CRANKing yet!' if message.text.blank?
      message.text
    end
  end
end
